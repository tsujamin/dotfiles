function cdtmp --wraps='pushd (mktemp -d)' --description 'alias cdtmp pushd (mktemp -d)'
  pushd (mktemp -d) $argv; 
end
