-------------------- Program chnage on knob release ----------------------------------

local CTRL_SELECT = 1 -- set to id # of selector control
local CHANNEL = 1 -- set to MIDI channel used
local PORT = 1 -- set to MIDI port being used

-- activeTouchedControlId holds which of the control knobs was touched (HT @oldgearguy)
local activeTouchedControlId   = -1

-- helper function to find match between touched control and target list of controls
local function get_key_for_value(t, value) 
   if (t ~= nil) then
      for k,v in pairs(t) do
         if v==value then return k end
      end
   end
   return nil
end

-- send program change messag eonly after control knob is released
function events.onPotTouchChange(potId, controlId, touched)
  local idx = get_key_for_value(CTRL_SELECT,controlId)
  if (idx == nil) then return end
  if (touched == true) and (activeTouchedControlId ~= controlId) then 
    activeTouchedControlId = controlId 
    return 
  end
  if (touched == false) and (activeTouchedControlId == controlId) then
    local midiValue = controls.get(controlId):getValue():getMessage():getValue()
    -- send a program change
    midi.sendProgramChange(PORT, CHANNEL, midiValue)
    print("program change" .. midiValue .. " sent")
  end
end

function preset.onLoad()
  events.subscribe(POTS) 
end
