MD=./manual/notecon.md
PDF=./manual/notecon.pdf
# REF=/Users/kcazelles/Documents/Writings/Articles/library.bib
# CSL=/Users/kcazelles/Documents/Writings/Articles/styles/theoretical-ecology.csl
PFLAGS=  --latex-engine=pdflatex #--bibliography=$(REF) --csl=$(CSL)

ALL: $(PDF)

$(PDF): $(MD) $(REF)
	pandoc $< -o $@ $(PFLAGS)


mrproper: clean
		rm $(PDF)
