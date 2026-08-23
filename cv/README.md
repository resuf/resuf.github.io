# CV source

LaTeX source for `pdf/cv_resuf_ahmed.pdf`.

Drop `cv_resuf_ahmed.tex` here, along with any `.cls`, `.sty`, `.bib`, or
image files it depends on.

Build (from repo root):

    make cv

This compiles `cv/cv_resuf_ahmed.tex` and copies the PDF to both
`pdf/cv_resuf_ahmed.pdf` (distill source) and `docs/pdf/cv_resuf_ahmed.pdf`
(published output), so the navbar CV link picks it up without a full
site rebuild.

This directory is excluded from the rendered site via `exclude:` in `_site.yml`.
