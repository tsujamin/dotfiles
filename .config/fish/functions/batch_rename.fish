# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.d0yfZs/batch_rename.fish @ line 2
function batch_rename
	set -l folder = $argv[1]
	set -l base_name $argv[2]
	set -l base_num $argv[3]

	pushd $folder

	find . -type f -depth 1 | sort -n | while read -a orig_name
		set -l extension (string split -m 1 -r . "$orig_name")[2]
		set -l new_name printf "%3d-%s.%s" "$base_num" "$base_name" "$extension"
		set base_num (math "$base_num + 1")
 		echo $new_name
	end

	popd
end
