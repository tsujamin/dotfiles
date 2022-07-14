# Defined in - @ line 1
function @duh --wraps='du -ch | tail -n1' --description 'alias @duh du -ch | tail -n1'
  du -ch | tail -n1 $argv;
end
