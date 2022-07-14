function @elk
	if test (count $argv) = 1
		set -f op $argv[1]	
	else
		echo "@elk [start|stop]"
	end
	for service in elasticsearch kibana
		brew services $op elastic/tap/$service-full || return -1
	end
end
