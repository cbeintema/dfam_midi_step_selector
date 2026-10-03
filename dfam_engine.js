// Max js controller for a monophonic DFAM step selector.
// Inlet 0: MIDI note list [pitch, velocity], or commands from the UI.
// Outlet 0: ADV/CLOCK line~ breakpoint list. Outlet 1: TRIGGER line~ list.
// Outlet 2: status text. Outlet 3: current step. Outlet 4: busy (0/1).
inlets = 1;
outlets = 5;

var base = 36;
var current = 1;
var highMs = 10.0;
var lowMs = 10.0;
var level = 0.5; // Approx. +5 V if ES-9 output full scale is +10 V.
var triggerMs = 5.0;
var settleMs = 10.0; // Allow cross-track scheduling and DFAM step settling.
var queue = [];
var queueLimit = 32;
var busy = false;
var enabled = false;
var completion = new Task(finish, this);

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function report(s) { outlet(2, s); outlet(3, current); outlet(4, busy ? 1 : 0); }

function loadbang() { report("DISARMED - calibrate step, then arm"); }

function list(pitch, velocity) {
    pitch = Math.floor(Number(pitch));
    velocity = Math.floor(Number(velocity));
    if (!enabled || velocity <= 0 || pitch < base || pitch > base + 7) return;
    if (queue.length >= queueLimit) { arm(0); report("QUEUE FULL - RECALIBRATE"); return; }
    queue.push(pitch - base + 1);
    if (!busy) startNext();
}

function startNext() {
    if (!enabled || queue.length === 0) { busy = false; report(enabled ? "READY" : "DISARMED"); return; }
    var target = queue.shift();
    var count = (target - current + 8) % 8;
    if (count === 0) count = 8; // Same note must travel around all eight steps.
    busy = true;
    var t = 1.0; // A one millisecond low lead-in.
    var advances = [0, t];
    for (var i = 0; i < count; i++) {
        // Max line~ takes one compound list of target/time pairs. A zero-time
        // change creates each edge; the following pair holds that voltage.
        advances.push(level, 0, level, highMs, 0, 0, 0, lowMs);
        t += highMs + lowMs;
    }
    outlet(0, advances);
    // Patching DFAM TRIGGER disconnects its internal clock-to-envelope normal.
    // Advance pulses are therefore silent; fire the selected step afterward.
    outlet(1, [0, t + settleMs, level, 0, level, triggerMs, 0, 0]);
    current = target;
    report("STEP " + target + " / " + count + " pulses");
    completion.cancel();
    completion.schedule(t + settleMs + triggerMs + 2);
}

function finish() { busy = false; if (queue.length) startNext(); else { outlet(4, 0); } }

function arm(v) {
    enabled = Number(v) > 0;
    if (!enabled) {
        queue = [];
        completion.cancel();
        busy = false;
        outlet(0, 0);
        outlet(1, 0);
    }
    report(enabled ? "ARMED - READY" : "DISARMED");
}

function setstep(v) {
    if (busy) { report("WAIT FOR PULSES BEFORE CALIBRATING"); return; }
    current = Math.floor(clamp(Number(v), 1, 8));
    report("CALIBRATED TO STEP " + current);
}

function testadv() {
    if (busy) { report("WAIT FOR CURRENT NOTE"); return; }
    // One deliberately slow edge for checking the ADV/CLOCK cable and DFAM Run state.
    outlet(0, [0, 2, level, 0, level, 20, 0, 0, 0, 20]);
    current = current % 8 + 1;
    report("TEST ADV SENT - CHECK DFAM LED; RECALIBRATE IF NEEDED");
}

function setbase(v) { base = Math.floor(clamp(Number(v), 0, 120)); report("BASE MIDI NOTE " + base); }
function sethigh(v) { highMs = clamp(Number(v), 0.2, 20); report("HIGH " + highMs + " ms"); }
function setlow(v) { lowMs = clamp(Number(v), 0.2, 20); report("LOW " + lowMs + " ms"); }
function setlevel(v) { level = clamp(Number(v), 0, 0.5); report("LEVEL " + level); }
