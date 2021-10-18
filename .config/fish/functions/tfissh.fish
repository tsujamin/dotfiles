# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.OndHCR/tfissh.fish @ line 2
function tfissh
	ssh -t $argv '
if tmux list-session -F "#S" | grep tssh
	tmux -CC attach -A -s tssh
else
	tmux -CC new -A -t tssh
end'
end
