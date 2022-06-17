SHELL=/bin/bash

.PHONY: all, render_pdf
all: render_pdf

render_pdf: pdf/*.pdf

pdf/*.pdf: lilypond/*.ly
	@ lilypond -s -o ./pdf $<
