MD=man/avecTerminal.md
PDF=man/avecTerminal.pdf
PFLAGS=  --highlight-style tango
# --listings -H aux/listings-setup.tex

ALL: $(PDF)

$(PDF): $(MD) $(REF)
	pandoc $< -o $@ $(PFLAGS)
