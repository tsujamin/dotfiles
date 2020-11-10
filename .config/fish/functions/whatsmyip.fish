function whatsmyip --description 'alias to determine what public IP address the machine\'s traffic is being routed via'
    dig myip.opendns.net | grep -A 1 "^;; ANSWER" | tail -n 1 | cut -f 5
end
