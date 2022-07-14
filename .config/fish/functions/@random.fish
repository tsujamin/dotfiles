# Defined via `source`
function @random --wraps=dd\ if=/dev/u@random\ bs=1\ count=256\ \^/dev/null\|\ shasum\ \|\ cut\ -d\ \'\ \'\ -f\ 1 --description alias\ @random\ dd\ if=/dev/u@random\ bs=1\ count=256\ \^/dev/null\|\ shasum\ \|\ cut\ -d\ \'\ \'\ -f\ 1
  dd if=/dev/u@random bs=1 count=256 ^/dev/null| shasum | cut -d ' ' -f 1 $argv; 
end
