# Defined via `source`
function @sync-ipod-test --wraps=rsync\ -vrtnu\ --progress\ --exclude\ \'\*6ch\*/\'\ benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/\ /Volumes/iPodClassic/ --description alias\ @sync-ipod-test\ rsync\ -vrtnu\ --progress\ --exclude\ \'\*6ch\*/\'\ benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/\ /Volumes/iPodClassic/
  rsync -vrtnu --progress --exclude '*6ch*/' benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/ /Volumes/iPodClassic/ $argv; 
end
