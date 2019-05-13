PDF=

all: $(PDF)

pdf/%.pdf: doc/%.md
	pandoc $< -o $@

pdf/%.pdf: doc/%.tex
	xelatex -output-dir pdf $<
	xelatex -output-dir pdf $<

copy: $(PDF)
	cp $(PDF) web/pdf

clean:
	find pdf -type f -not -name '*.pdf' -delete
