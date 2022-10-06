# Defined via `source`
function @jd-gui --wraps='pushd /Applications/JD-GUI.app/Contents/Resources/Java/; and java -jar @jd-gui-1.6.6-min.jar; popd' --description 'alias @jd-gui pushd /Applications/JD-GUI.app/Contents/Resources/Java/; and java -jar @jd-gui-1.6.6-min.jar; popd'
  pushd /Applications/JD-GUI.app/Contents/Resources/Java/; and java -jar jd-gui-1.6.6-min.jar; popd $argv; 
end
