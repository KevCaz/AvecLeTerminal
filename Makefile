MD=man/avecTerminal.md
PDF=man/avecTerminal.pdf
PFLAGS=  --latex-engine=pdflatex --highlight-style kate
# --listings -H aux/listings-setup.tex

ALL: $(PDF)

$(PDF): $(MD) $(REF)
	pandoc $< -o $@ $(PFLAGS)
