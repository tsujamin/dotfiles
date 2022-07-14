# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.FFXZHj/@tfissh.fish @ line 2
function @tfissh
	ssh -t $argv '
if tmux list-session -F "#S" | grep tssh
	tmux -CC attach -t tssh
else
	tmux -CC new -A -s tssh
end'
end
