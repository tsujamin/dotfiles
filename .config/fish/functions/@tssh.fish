# Defined in /Users/benjaminroberts/.config/fish/functions/@tssh.fish @ line 2
function @tssh
   ssh -t $argv 'if [ -n $(tmux list-session -F "#S" | grep tssh) ]; then tmux -CC new -A -s tssh; else tmux -CC attach -A -t tssh; fi'
end
