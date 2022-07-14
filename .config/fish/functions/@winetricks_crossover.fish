# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.7QeSYx/@winetricks_crossover.fish @ line 2
function @winetricks_crossover
	if test (count $argv) -lt 1
		echo "@winetricks_crossover BOTTLE_NAME [winetricks_args]"
		return -1
    end

	set -lx CX_BOTTLE $argv[1]
	set -lx WINEPREFIX /Users/benjaminroberts/Library/Application\ Support/CrossOver/Bottles/
	set -lx WINE /Applications/CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine
	
	if test (count $argv) -gt 1
	    winetricks $argv[(seq 2 (count $argv))]
	else
            winetricks
	end
end
