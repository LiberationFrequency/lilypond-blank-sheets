PAPER ?= a4  # a4landscape
PDFS  := $(patsubst %.ly, %.pdf, $(wildcard *.ly))

all: $(PDFS)

%.pdf : %.ly;
	lilypond --define=paper-size='"$(PAPER)"' --output $(basename $@) $<

clean:
	-rm -f $(PDFS)
