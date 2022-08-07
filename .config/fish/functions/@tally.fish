function @tally --wraps='sort | uniq -c | sort -nb' --wraps='sort | uniq -c | sort -rn' --description 'alias @tally sort | uniq -c | sort -rn'
  sort | uniq -c | sort -rn $argv; 
end
