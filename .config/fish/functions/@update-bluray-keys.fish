# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.RKlBPG/@update-bluray-keys.fish @ line 2
function @update-bluray-keys --wraps='curl -o ~/.config/aacs/keydb.cfg  http://fvonline-db.bplaced.net/fv_download.php?lang=eng' --wraps=curl\ -o\ \~/.config/aacs/keydb.cfg\ \'http://fvonline-db.bplaced.net/fv_download.php\?lang=eng\' --wraps=curl\ -o\ \~/Library/Preferences/aacs/keydb.cfg\ \'http://fvonline-db.bplaced.net/fv_download.php\?lang=eng\'
  set TEMP (mktemp -d )
  curl  -L 'http://fvonline-db.bplaced.net/fv_download.php?lang=eng' -o "$TEMP/a.zip"
  yes | unzip -d ~/Library/Preferences/aacs/ "$TEMP/a.zip"
  rm -r "$TEMP"
end
