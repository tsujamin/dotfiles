# Defined in - @ line 1
function fix-touchbar --wraps='sudo killall TouchBarServer; sudo killall ControlStrip' --description 'alias fix-touchbar sudo killall TouchBarServer; sudo killall ControlStrip'
  sudo killall TouchBarServer; sudo killall ControlStrip $argv;
end
