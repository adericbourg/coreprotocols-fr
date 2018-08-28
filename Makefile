all: pdf epub

_build:
	mkdir -p _build

pdf: _build
	cd tex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory ../_build document.tex
	cd tex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory ../_build document.tex

epub: _build
	cd tex && pandoc document.tex -o ../_build/document.epub -M date="`date "+%e %B %Y"`"

lint:
	lacheck tex/document.tex 
	chktex tex/document.tex
