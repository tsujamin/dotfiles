# Defined via `source`
function @cgrep --wraps='grep --color=always' --description 'alias @cgrep grep --color=always'
  grep --color=always $argv; 
end
