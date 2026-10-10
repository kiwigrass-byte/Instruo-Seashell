-------------------- Program chnage on knob release ----------------------------------

local CTRL_SELECT = 1 -- set to id # of selector control
local CHANNEL = 1 -- set to MIDI channel used
local PORT = 1 -- set to MIDI port being used

-- activeTouchedControlId holds which of the control knobs was touched (HT @oldgearguy)
local activeTouchedControlId   = -1

-- send program change messag eonly after control knob is released
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
  end
end

function preset.onLoad()
  events.subscribe(POTS) 
end
