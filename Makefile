all: pdf

_build:
	mkdir -p _build

pdf: _build
	cd tex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory ../_build document.tex
	cd tex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory ../_build document.tex
