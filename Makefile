SRCS := $(wildcard *.tex *.bib figs/*.png figs/*.pdf)

DATE := $(shell date +%d%m%Y)

default: main.pdf

main.pdf: $(SRCS) 
	rubber -fdv main

clean:
	rubber --pdf --clean main



