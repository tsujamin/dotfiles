# Defined via `source`
function @sync-ipod --wraps=rsync\ -vrtnu\ --progress\ --exclude\ \'\*6ch\*/\'\ benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/\ /Volumes/iPodClassic/ --wraps=rsync\ -vrtu\ --progress\ --exclude\ \'\*6ch\*/\'\ benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/\ /Volumes/iPodClassic/ --description alias\ @sync-ipod\ rsync\ -vrtu\ --progress\ --exclude\ \'\*6ch\*/\'\ benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/\ /Volumes/iPodClassic/
  rsync -vrtu --progress --exclude '*6ch*/' benjamin@freenas.int.bgroberts.id.au:/mnt/int_bgroberts_pool/Media/Audio/ /Volumes/iPodClassic/ $argv; 
end
