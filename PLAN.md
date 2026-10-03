# Build plan

## Intended behavior

An eight-note MIDI range maps to DFAM steps 1–8. A note-on with velocity above zero selects and plays its step, including repeated notes. Note-offs do not advance the DFAM. This is a monophonic, event-based controller: simultaneous note-ons are processed in arrival order. One ES-9 stereo pair carries advance pulses on its left channel and a final trigger on its right channel.

The DFAM has no direct step-select input. Its ADV/CLOCK input advances one step on each rising edge. The device therefore keeps a software step position and emits `(target - current + 8) mod 8` pulses. A repeated step needs eight pulses to make a full circuit. After the advances, the device fires the DFAM TRIGGER input so only the selected step sounds. The starting position must be calibrated to the real DFAM.

## Milestones

### 1. Pulse and routing prototype

- Create a minimal Max for Live MIDI instrument that sends an adjustable pulse train to one ES-9 output and a final trigger to the next output.
- Make output channel, pulse width, pulse gap, and voltage level configurable. Begin with conservative settings; measure the output and tune against the actual DFAM rather than assuming a universal minimum pulse interval.
- Confirm one pulse advances exactly one DFAM step and that an eight-pulse train returns to the same step.
- Verify the selected ES-9 jack corresponds to the selected Live output. Check the ES-9 routing configuration, especially if it has been customized.

**Pass:** one through eight requested pulses are counted consistently, and no CV reaches the monitor outputs.

### 2. MIDI-to-step engine

- Add a configurable base MIDI note; notes `base` through `base + 7` target steps 1–8.
- Track the current step and generate the forward pulse count for each note-on.
- Queue or serialize closely spaced MIDI events so one pulse train finishes before the next begins. Define a clear policy for impossible rates: queue a small bounded number of events, then report overflow rather than silently losing sync.
- Generate the pulses in Max's audio domain for stable spacing, while using MIDI events only to request target steps.
- Expose current step, requested step, busy state, and a manual **Set current step** calibration control.

**Pass:** all 64 step-to-step transitions, repeated notes, and short rapid patterns select the expected physical step.

### 3. Live workflow

- Package the device as an `.amxd` with a compact interface and saved parameters.
- Provide a clear startup calibration: stop incoming notes, put the DFAM on step 1, set the device's current step to 1, put the DFAM in Run mode, then test one note per step. Confirm the exact DFAM button sequence on the hardware.
- Document Live track routing, ES-9 output selection, and how to record the DFAM's audio on a separate track.
- Test Live transport start/stop, device reload, project reopen, audio engine restart, and changes to buffer size. On any state uncertainty, require recalibration rather than pretending the software still knows the DFAM's position.

**Pass:** a new Live set can be configured using the README alone, and after calibration an eight-note clip plays the programmed DFAM steps in arbitrary order.

### 4. Optional extensions

- Map MIDI velocity to a second ES-9 CV output for a chosen DFAM modulation input; specify the destination and voltage range explicitly.
- Add pressure/mod-wheel CV, note-range presets, and a resync helper.
- Explore transport-aware timing or latency compensation after the core step selector is reliable.

## Engineering decisions to validate on hardware

1. **Pulse timing:** The DFAM must register each rising edge, including rapid bursts. Find the shortest reliable high and low times over repeated trials.
2. **Trigger behavior:** Confirm that advancing with the DFAM running produces one audible selected step per MIDI note, rather than audible intermediate steps. If intermediate steps sound, test a separate TRIGGER input strategy and whether patching that input decouples envelope triggering from advance pulses.
3. **Voltage calibration:** The DFAM ADV/CLOCK expects a 0 to +5 V clock/gate. The ES-9's 3.5 mm outputs can reach approximately ±10 V at full digital scale, so the device needs a bounded positive output and a verified zero baseline.
4. **State drift:** Manual DFAM advances, missed pulses, Live dropouts, or an ES-9 routing change can desynchronize the software counter. Provide an obvious reset/calibration path.
5. **Fast MIDI:** A burst of multiple advances takes real time. Establish a maximum sustainable note rate from the tested pulse timing and define what the device does when requests arrive faster.

## Sources and factual basis

- [Sonoclast MAFD](https://sonoclast.com/products/mafd/): MIDI notes address eight DFAM steps through its ADV/CLOCK input.
- [Moog DFAM manual](https://api.moogmusic.com/sites/default/files/2018-04/DFAM_Manual.pdf): ADV/CLOCK advances on rising edges and accepts a 0 to +5 V clock/gate; TRIGGER fires envelopes at the current step without advancing.
- [Expert Sleepers ES-9 manual](https://www.expert-sleepers.co.uk/downloads/manuals/es9_user_manual_1.1.pdf): eight DC-coupled 3.5 mm outputs; default DAW output assignments 9–16; approximately ±10 V maximum output.
- [Ableton CV Tools FAQ](https://help.ableton.com/hc/en-us/articles/360004966139-CV-Tools-Overview-Technical-FAQ): Live/Max for Live can send CV through DC-coupled outputs.

The pulse-train algorithm is implemented in the first device version. The source material establishes feasibility, but hardware timing and audible behavior remain to be tested.
