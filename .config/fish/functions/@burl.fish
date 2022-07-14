# Defined via `source`
function @burl --wraps='curl --proxy http://127.0.0.1:8080 -k' --description 'alias @burl curl --proxy http://127.0.0.1:8080 -k'
  curl --proxy http://127.0.0.1:8080 -k $argv; 
end
