md:
	pandoc resume.tex -o README.md

pdf:
	pdflatex resume.tex

clean:
	rm -f resume.pdf
	rm -f resume.md
	rm -f resume.log
	rm -f resume.aux
	rm -f resume.toc
	rm -f resume.out
	rm -f resume.fdb_latexmk

push: clean pdf md
	git add .
	git commit -m "update resume"
	git push