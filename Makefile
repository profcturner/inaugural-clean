# Makefile for Inaugural lecture

clean_intermediate:
	rm -rf *.idx *.ilg *.ind *.log *.out *.toc *.aux

clean: clean_intermediate
	rm -rf *.pdf

all: inaugural-handout inaugural-embed-handout inaugural-embed clean_intermediate

inaugural-handout:
	pdflatex "\PassOptionsToClass{handout}{beamer} \input{inaugural}"
	pdflatex "\PassOptionsToClass{handout}{beamer} \input{inaugural}"
	cp inaugural.pdf inaugural-handout.pdf

inaugural-embed-handout:
	pdflatex "\PassOptionsToClass{handout}{beamer} \def\embedvideos{1} \input{inaugural}"
	pdflatex "\PassOptionsToClass{handout}{beamer} \def\embedvideos{1} \input{inaugural}"
	cp inaugural.pdf inaugural-embed-handout.pdf

inaugural-embed:
	pdflatex "\def\embedvideos{1} \input{inaugural}"
	pdflatex "\def\embedvideos{1} \input{inaugural}"
	cp inaugural.pdf inaugural-embed.pdf

