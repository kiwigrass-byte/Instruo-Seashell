# Instruo Seashell preset for Electra One mk2 MIDI controller with patch loading and comparison mode (14bit version)

- Synth must be on at least fw 2.0 (August 2026)
- **IMPORTANT:** To send 14-bit data the E1 must connect via the Seashell's USB port. The preset sends 14-bit parameter values to the Seashell in the form of two sequential CC messages (MSB and LSB) sent on MIDI channels 14 and 15, respectively. 
- The preset sends program changes on MIDI channel 2. Change to match the MIDI channel on the Seashell.

---
**What's in the preset**
- Parameter values for the default set of 2.0 patches are sent when selected from the **PATCH SELECTOR**. At the same time a program change message is sent.
- The **COMPARE TO PATCH** control allows switching between an edited sound (and UI) and the original patch sound (and UI). Very useful! 
- Mimics the layout and most features of the Seashell app.
- Hides controls when not available.
---
**What's not in the preset**
- Patch saving. 
---
# Instruo Seashell preset for Electra One mk2 MIDI controller with patch loading and comparison mode (7bit version)
##fix note sync map0N(x,max) to max =18 not 19
- Synth must be on at least fw 2.0 (August 2026)
- **IMPORTANT:** The preset sends 7-bit parameter values and program change messages on MIDI channel 2. Change to match the MIDI channel on the Seashell. 

- The preset assumes the MIDI parameter mapping in the Seashell app is in the exact order as listed from 0 to 93 (see Default Map.seashell_midi). Note, monitor mix and pickup behavior are not controllable via 7-bit MIDI.

---
**What's in the preset**
- Parameter values for the default set of 2.0 patches are sent when selected from the **PATCH SELECTOR**. At the same time a program change message is sent.
- The **COMPARE TO PATCH** control allows switching between an edited sound (and UI) and the original patch sound (and UI). Very useful! 
- Mimics the layout and most features of the Seashell app.
- Hides controls when not available.
- The Seashell app will update with parameter changes made on the E1 if the E1 is set as an active MIDI input. The quantization of 0..127 MIDI values means the E1 displayed parameter values won't always match exactly what is displayed in the app. 
---
**What's not in the preset**
- Patch saving.   
