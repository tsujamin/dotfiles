# Defined via `source`
function ansible-doc-search --wraps='ansible-doc -l ^/dev/null | grep ' --description 'alias ansible-doc-search ansible-doc -l ^/dev/null | grep '
  ansible-doc -l ^/dev/null | grep  $argv; 
end
