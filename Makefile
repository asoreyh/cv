all:
	cp cv.tex cv-org.tex
	xelatex cv.tex
	xelatex cv.tex
	mv cv.pdf cv-esp.pdf
	cat cv-org.tex | sed 's/\%\\engtrue/\\engtrue/' > cv.tex
	xelatex cv.tex
	xelatex cv.tex
	mv cv.pdf cv-eng.pdf
	mv cv-org.tex cv.tex
	make clean

clean:
	rm -f *.aux *.log *.out *.bak

del:
	rm -f cv-*.pdf
	make clean
