# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.Jo0Mis/@batch_rename.fish @ line 2
function @batch_rename
	set -l folder $argv[1]
	set -l base_name $argv[2]
	set -l base_num $argv[3]

	pushd $folder

	find . -type f -depth 1 | sort -n | while read -a orig_name
		if test $base_num -gt 999
			echo "too many files (more than 999)"
			return
		end
		set -l extension (string split -m 1 -r . "$orig_name")[2]
		set -l new_name (printf "%03d-%s.%s" "$base_num" "$base_name" "$extension")
		set base_num (math "$base_num + 1")
 		mv "$orig_name" "$new_name"
	end

	popd
end
