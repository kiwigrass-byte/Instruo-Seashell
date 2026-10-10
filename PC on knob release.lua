-------------------- Program change on knob release ----------------------------------

local CTRL_SELECT = 1 -- set to the reference id # of the program selector fader
local CHANNEL = 1 -- set to MIDI channel the receiving device is listening on 
local PORT = 1 -- set to MIDI port the PC message is being sent from

-- activeTouchedControlId holds which of the control knobs was touched (HT @oldgearguy)
local activeTouchedControlId   = -1

-- send program change message only after control knob is released
function events.onPotTouchChange(potId, controlId, touched)
  if controlId ~= CTRL_SELECT then return end
  if (touched == true) and (activeTouchedControlId ~= controlId) then 
    activeTouchedControlId = controlId 
    return 
  end
  if (touched == false) and (activeTouchedControlId == controlId) then
    local midiValue = controls.get(controlId):getValue():getMessage():getValue()
    -- send a program change
    midi.sendProgramChange(PORT, CHANNEL, midiValue)
    print("program change " .. midiValue .. " sent")
    activeTouchedControlId = -1
  end
end

function preset.onLoad()
  events.subscribe(POTS) 
end
