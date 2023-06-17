PDFS := $(patsubst %.ly, %.pdf, $(wildcard *.ly))

all: $(PDFS)

%.pdf : %.ly;
	lilypond --output $(basename $@) $<

clean:
	-rm -f $(PDFS)
