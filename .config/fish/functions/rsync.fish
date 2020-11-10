# Defined in - @ line 1
function rsync --wraps='rsync --progress' --description 'alias rsync rsync --progress'
 command rsync --progress $argv;
end
