# Defined via `source`
function @sync-ipod-test
  rsync -vrtnu --progress --exclude '*6ch*/' --exclude 'Surround Rips/*' benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/ /Volumes/iPodClassic/ $argv; 
end
