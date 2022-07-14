# Defined via `source`
function @lomount --wraps='hdiutil attach -nomount -imagekey diskimage-class=CRawDiskImage' --description 'alias @lomount hdiutil attach -nomount -imagekey diskimage-class=CRawDiskImage'
  hdiutil attach -nomount -imagekey diskimage-class=CRawDiskImage $argv; 
end
