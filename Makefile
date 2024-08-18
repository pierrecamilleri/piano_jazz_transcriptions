SHELL=/bin/bash

.PHONY: all, render_pdf

all: pdf/*.pdf

pdf/%.pdf: lilypond/%.ly
	@ lilypond -s -o ./pdf $<
