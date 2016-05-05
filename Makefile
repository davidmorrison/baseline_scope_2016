SRCS := $(wildcard *.tex *.bib figs/*.png figs/*.pdf)

DATE := $(shell date +%d%m%Y)

default: baseline_scope_2016.pdf

%.pdf: $(SRCS) 
	rubber -fdv $<

clean:
	rubber --pdf --clean baseline_scope_2016



