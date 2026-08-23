# Build the CV from LaTeX source and place it where the site expects it.
CV_TEX := cv/cv_resuf_ahmed.tex
CV_PDF := pdf/cv_resuf_ahmed.pdf

.PHONY: cv site clean

cv: $(CV_PDF)

$(CV_PDF): $(CV_TEX)
	cd cv && latexmk -pdf -interaction=nonstopmode -halt-on-error $(notdir $(CV_TEX))
	cp cv/$(basename $(notdir $(CV_TEX))).pdf $(CV_PDF)
	cp $(CV_PDF) docs/$(CV_PDF)

site:
	Rscript -e 'rmarkdown::render_site()'
	# render_site() deletes it every run; GitHub Pages needs it back
	touch docs/.nojekyll

clean:
	cd cv && latexmk -C
