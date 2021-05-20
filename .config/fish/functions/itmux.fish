# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.I1YK3R/itmux.fish @ line 2
function itmux
if test (count $argv) -ne 1
echo "usage: itmux session_name"
return 1
end

set -l session_name "$argv[1]"

if contains "$session_name" (tmux list-session -F "#S")
echo "found existing session $session_name"
tmux -CC attach -t "$session_name"
else
echo "starting new session $session_name"
tmux -CC new -A -s "$session_name"
end
end
