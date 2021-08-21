# Defined via `source`
function remove_orphans --wraps=find\ .\ -type\ f\ -depth\ 1\ \|\ egrep\ -o\ \\\'./\[\^\\.\]+\\\'\ \|\ sort\ \|\ uniq\ -c\ \|\ grep\ \\\'\ 1\ \\\'\ \|\ egrep\ -o\ \\\'\\./.\*\\\'\ \|\ xargs\ -I\%\ rm\ \%.JPG\ \%.CR3 --wraps=find\ .\ -type\ f\ -depth\ 1\ \|\ egrep\ -o\ \\\'./\[\^\\.\]+\\\'\ \|\ sort\ \|\ uniq\ -c\ \|\ grep\ \\\'\ 1\ \\\'\ \|\ egrep\ -o\ \\\'\\./.\\\*\\\'\ \|\ xargs\ -I\%\ rm\ \%.JPG\ \%.CR3 --description alias\ remove_orphans\ find\ .\ -type\ f\ -depth\ 1\ \|\ egrep\ -o\ \\\'./\[\^\\.\]+\\\'\ \|\ sort\ \|\ uniq\ -c\ \|\ grep\ \\\'\ 1\ \\\'\ \|\ egrep\ -o\ \\\'\\./.\\\*\\\'\ \|\ xargs\ -I\%\ rm\ \%.JPG\ \%.CR3
  find . -type f -depth 1 | egrep -o \'./[^\.]+\' | sort | uniq -c | grep \' 1 \' | egrep -o \'\./.\*\' | xargs -I% rm %.JPG %.CR3 $argv; 
end
