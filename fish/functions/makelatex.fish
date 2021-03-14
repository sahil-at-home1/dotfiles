function makelatex
	pdflatex $argv; latexmk -c $argv
end
