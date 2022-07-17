# Defined in - @ line 1
function @flush-dns --wraps='sudo killall -HUP mDNSResponder' --description 'alias @flush_dns sudo killall -HUP mDNSResponder'
  sudo killall -HUP mDNSResponder $argv;
end
