# Defined via `source`
function home --wraps='cd ~; clear' --description 'alias home cd ~; clear'
  cd ~; clear $argv; 
end
