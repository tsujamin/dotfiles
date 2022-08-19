function @resolvehosts
	set args $argv

	if test (count $argv) -eq 0
		while read line
			set args $args $line
		end
	end

	for d in $args
		for r in (dig +short +time=1 $d)
			echo $d,$r
		end
	end
end
