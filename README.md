# DFAM MIDI Step Selector

A Max for Live project to address the Moog DFAM's eight sequencer steps with MIDI notes, using an Expert Sleepers ES-9 for CV output.

## Goal

Play or sequence the DFAM's existing step sounds in any order from an eight-note MIDI range in Ableton Live. Each note selects one DFAM step. The DFAM's pitch and velocity knobs continue to define the sound of each step.

## Hardware path

Live MIDI track → Max for Live device → one ES-9 **stereo output pair** → DFAM **ADV/CLOCK and TRIGGER inputs**.

With the ES-9's default routing, its eight 3.5 mm outputs correspond to DAW outputs **9–16**. Confirm the current ES-9 configuration before patching; these assignments can be changed.

Use two 3.5 mm TS cables. The left/first output of the pair goes to the DFAM's **ADV/CLOCK input**; the right/second output goes to the DFAM's **TRIGGER input**. Select the ES-9 as Live's audio output device and enable the chosen stereo pair in Live. Keep both CV channels out of speaker and headphone routing.

## Device

Use [DFAM MIDI Step Selector.amxd](DFAM%20MIDI%20Step%20Selector.amxd) on one MIDI track. Keep [dfam_engine.js](dfam_engine.js) beside it so Max can load the controller script. The device sends ADV/CLOCK on the stereo pair's left channel and TRIGGER on its right channel.

## Setup

1. In Live, select the ES-9 as the audio output device and enable a **stereo pair** in Audio Preferences. The default ES-9 mapping sends DAW channels **9–16** to its 3.5 mm outputs **1–8**. For example, Live stereo output **9/10** drives ES-9 jacks **1/2**.
2. Add the `.amxd` to a MIDI track. In **AUDIO OUT**, choose **Ext. Out**. In **STEREO PAIR**, choose an available stereo pair. **Also set the Live track's Audio To to Ext. Out and choose that same pair.** Do not choose a mono channel. In the current aggregate-device setup, Live exposes ES-9 jacks 7/8 as **37/38 es9_out_7_8**.
3. Connect the pair's **left/first ES-9 jack to DFAM ADV/CLOCK** and its **right/second jack to DFAM TRIGGER input**. Patching TRIGGER breaks the DFAM's normal clock-to-envelope connection, so intermediate advances should be silent and only the final selected step should sound. Keep both ES-9 jacks disconnected from speakers.
4. Align the DFAM to step 1 using its controls. Set **SET STEP** to 1 in the device and put the DFAM in Run mode. Keep MIDI input stopped during this step.
5. Set **BASE NOTE** to the first of eight notes (default 36), then **ARM OUTPUT**. Play the eight notes and confirm the DFAM lands on the corresponding steps.
6. If a pulse is missed or you manually move the DFAM, disarm, align its step, set the device's current step, and arm again.

Reloading the device resets its software step estimate to 1; it cannot read the DFAM's physical step LED. After a reload, match **SET STEP** to the lit DFAM step before arming. If the notes appear consistently shifted by the same number of steps, recalibrate this value.

### Output diagnosis

- Select a **stereo** item in STEREO PAIR, not a single numbered mono output, and set the Live track's **Audio To** to the same external pair. If only mono channels are listed, enable the desired stereo pair in Live's Audio Preferences. With an aggregate audio device, use its actual output names rather than assuming 9/10.
- If you hear sharp clicks before and after the DFAM sound, check the selector track's **Audio To** first. Sending its CV pulse channels to **Main** lets you hear the control signals as audio. The selector track should feed only the ES-9 CV pair; monitor the DFAM's actual audio on its separate **DRUMS > DFAM** track.
- Switch **HOLD ADV** on. It holds approximately +5 V on the pair's left channel even when the device is disarmed. The connected ES-9 jack should show positive voltage and the DFAM should advance once when the switch goes high. Switch it off before trying another advance.
- Click **TEST ADV** once with both HOLD switches off. It sends one 20 ms ADV/CLOCK pulse and updates the device's step estimate by one. The DFAM step LED should advance exactly once. If it does not, check that the left/first cable reaches the DFAM **ADV/CLOCK input**, that the DFAM is in **Run** mode, and that the chosen pair drives the expected ES-9 jacks. Recalibrate SET STEP after diagnosing any missed pulse.
- Switch **HOLD TRIG** on. It holds approximately +5 V on the pair's right channel. The connected ES-9 jack should show positive voltage and the DFAM should play its current step without advancing. Switch it off afterward.
- The hold signals are clipped at a 0.5 digital level even if MIDI pulses occur while a hold switch is on. Turn both hold switches off before normal sequencing so the DFAM sees rising edges.
- Play a MIDI note. **MIDI IN** should increment (it counts note-on and note-off messages). If the test buttons work but this count does not change, check the clip/track MIDI path. If the count changes but there are no output pulses, check ARM OUTPUT and the BASE NOTE range.

The device starts disarmed. MIDI velocity above zero selects a step; note-off does nothing. Repeating a note sends eight advances. **HIGH** and **LOW** default to 10 ms each to give the DFAM more time to register each edge; a separate 5 ms trigger follows the final advance after a 10 ms settling interval. **CV SCALE** defaults to 0.5, theoretically about +5 V on an ES-9 whose full-scale output is approximately +10 V. Verify the actual voltage and reliable pulse timing on your hardware before relying on it in a performance.

The October 2026 fix replaces an invalid `vline~` object with Max's `line~`. If the Max console reports `vline~: No such object`, Live still has an older instance loaded; remove it and add the updated `.amxd` again.

If you replace an earlier version of the device file, remove the old device from the Live track and load the updated `.amxd` again to refresh its presentation view.

## Status

This version restores the fixed ADV/CLOCK + TRIGGER setup that selected the intended DFAM steps. Routing the selector track only to the ES-9 pair removed audible CV spikes from Live's Main mix. See [PLAN.md](PLAN.md) for the hardware acceptance criteria.

## References

- [Sonoclast MAFD](https://sonoclast.com/products/mafd/)
- [Moog DFAM manual](https://api.moogmusic.com/sites/default/files/2018-04/DFAM_Manual.pdf)
- [Expert Sleepers ES-9 manual](https://www.expert-sleepers.co.uk/downloads/manuals/es9_user_manual_1.1.pdf)
- [Ableton CV Tools technical FAQ](https://help.ableton.com/hc/en-us/articles/360004966139-CV-Tools-Overview-Technical-FAQ)
