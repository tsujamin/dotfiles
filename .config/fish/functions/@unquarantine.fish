function @unquarantine --wraps='xattr -dr com.apple.quarantine' --description 'alias @unquarantine xattr -dr com.apple.quarantine'
  xattr -dr com.apple.quarantine $argv; 
end
