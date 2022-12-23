function msfconsole --wraps='pushd ~/projects/metasploit-framework/; ./msfconsole -m ~/projects/metasploit-modules/; popd;'
  pushd ~/projects/metasploit-framework/
 ./msfconsole -m ~/projects/metasploit-modules $ARGV
  popd
end
