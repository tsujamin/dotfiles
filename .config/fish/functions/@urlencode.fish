# Defined in - @ line 1
function @urlencode --wraps='python3 -c "import urllib.parse; print(urllib.parse.quote_plus(input()))"' --description 'alias @urlencode python3 -c "import urllib.parse; print(urllib.parse.quote_plus(input()))"'
  python3 -c "import urllib.parse; print(urllib.parse.quote_plus(input()))" $argv;
end
