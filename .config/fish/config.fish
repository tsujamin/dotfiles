set -u fish_greeting

set -gx fish_key_bindings fish_vi_key_bindings
set -gx PYTHONSTARTUP ~/.pythonrc
set -gx EDITOR vim
set -gx YUBIKEY_A_GPG_KEY 0xD377A7282D9FF4F6CEBF15493DE0A30B99B9C883
set -gx YUBIKEY_C_GPG_KEY 0xC33807BFCBC6DB999784788452D10CC8A46EC29F
set -gx GPG_KEY "$YUBIKEY_C_GPG_KEY"
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx LESS "-r"
set -gx LESS_ADVANCED_PREPROCESSOR 1

checkmail

