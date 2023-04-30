# Defined via `source`
function @sync-ipod
  rsync -vrtu --progress --exclude '*6ch*/' --exclude '*7.1ch*/' --exclude 'Surround Rips/*' benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/ /Volumes/iPodClassic/ $argv; 
end
