# Instruo Seashell preset for Electra One mk2 MIDI controller with patch loading and comparison mode

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
- MIDI CC values as a modulation source. 
---
*Note: The preset sends 14-bit parameter values to the Seashell in two sequential CC messages (MSB and LSB). The Seashell expects the MSB sent on channel 14 and the LSB sent on channel 15.*
  
