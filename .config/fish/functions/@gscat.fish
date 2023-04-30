function @gscat
	set outfile (basename $argv[1] .pdf)-combined.pdf
	gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -sOutputFile=$outfile $argv
	open $outfile
end
