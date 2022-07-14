function @crtshget
	echo $argv | sed 's/ /\n/' | xargs -I % bash -c "curl -s https://crt.sh/atom?q=% | xmllint --html --xpath '//*[local-name()=\"summary\"]' -" | sed 's/&lt;br&gt;.*//
          s/.*>//g' | sort -u
end
