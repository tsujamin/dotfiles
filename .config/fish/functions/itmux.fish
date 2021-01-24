# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.Ubp3Z0/itmux.fish @ line 2
function itmux
if test (count $argv) -ne 1
echo "itmux session_name"
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
