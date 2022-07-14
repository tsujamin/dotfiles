# Defined via `source`
function @new-tempd --wraps='cd (mktemp -d)' --description 'alias @new-tempd cd (mktemp -d)'
  cd (mktemp -d) $argv; 
end
