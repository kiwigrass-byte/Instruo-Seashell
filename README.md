# Instruo Seashell preset for Electra One mk2 MIDI controller with patch loading and comparison mode

- Synth must be on at least fw 2.0 (August 2026)
- **IMPORTANT:** The E1 must connect via the Seashell's USB port in order to receive the 14-bit MIDI messages. It can also connect via the TRS MIDI port -- only program change messages are received there.
- The preset is set to MIDI channel 2. Change accordingly.

---
**What's in the preset**
- Parameter values for the default set of 2.0 patches are hard-coded in the preset and are sent when selected from the **PATCH SELECTOR**. At the same time a program change message is sent.
- Use the **COMPARE TO PATCH** control to switch between an edited sound (and UI) and the original patch sound (and UI). Very useful! 
- Mimics the layout and features of the Seashell app.
- Hides controls when not available.
---
**What's not in the preset**
- Patch saving. 
- MIDI CC values as a modulation source. 
---
*Note: The preset sends 14-bit parameter values to the Seashell in two sequential CC messages (MSB and LSB). The Seashell expects the MSB sent on channel 14 and the LSB sent on channel 15.*
  
