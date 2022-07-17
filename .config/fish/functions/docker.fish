# Defined via `source`
function docker --wraps=vctl --description 'alias @docker vctl'
  vctl $argv; 
end
