function @gscat
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -sOutputFile=(basename $argv[1] .pdf)-combined.pdf $argv
end
