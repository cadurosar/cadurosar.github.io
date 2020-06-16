# Quit on first error
set -e

# Clear out junk
#rm -f *aux
#rm -f main.ind
#rm -f main.toc
#rm -f main.bbl

# Create empty settings file if it does not exist
#echo "" >> settings.tex
pdflatex -interaction=batchmode -draftmode Lassance_resume_english.tex
pdflatex -interaction=batchmode -shell-escape Lassance_resume_english.tex
