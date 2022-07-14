# Defined in - @ line 1
function @get-current-gazzette-objects --wraps=curl\ \"https://nla.gov.au/nla.obj-2566499518/browse\?startIdx=0\&rows=10000\&op=c\"\ \^\ /dev/null\|\ egrep\ -o\ \"nla\\.obj\\-\[0-9\]+\" --description alias\ @get-current-gazzette-objects\ curl\ \"https://nla.gov.au/nla.obj-2566499518/browse\?startIdx=0\&rows=10000\&op=c\"\ \^\ /dev/null\|\ egrep\ -o\ \"nla\\.obj\\-\[0-9\]+\"
  curl "https://nla.gov.au/nla.obj-2566499518/browse?startIdx=0&rows=10000&op=c" ^ /dev/null| egrep -o "nla\.obj\-[0-9]+" $argv;
end
