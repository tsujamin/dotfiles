# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.4X2gkp/@vctl_cleanup_containers.fish @ line 2
function @vctl-cleanup-containers --wraps=vctl\ ps\ -a\ \|\ cut\ -d\ \'\ \'\ -f\ 1\ \|\ tail\ -n\ +4\ \|\ xargs\ vctl\ rm --description alias\ @vctl_cleanup_containers\ vctl\ ps\ -a\ \|\ cut\ -d\ \'\ \'\ -f\ 1\ \|\ tail\ -n\ +4\ \|\ xargs\ vctl\ rm
  vctl ps -a | cut -d ' ' -f 1 | tail -n +4 | xargs vctl rm ;
  vctl images | cut -d ' ' -f 1 | tail -n +4 | xargs vctl rmi;
end
