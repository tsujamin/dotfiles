function dotfiles --wraps=git --description="Git wrapper for dotfile management"
	set -l REPO "$HOME/.dotfiles/"
	
	if not test -e "$REPO"
		git init --bare "$REPO"
		git --git-dir="$REPO" --work-tree="$HOME" config status.showUntrackedFiles no
	end

	git --git-dir="$REPO" --work-tree="$HOME" $argv
end
