all:
	cp cv.tex cv-org.tex
# FULL - ESP
	xelatex cv.tex
	xelatex cv.tex
	mv cv.pdf cv-esp.pdf
	cp cv-org.tex cv.tex
# RES - ESP
	cat cv-org.tex | sed 's/\%\\restrue/\\restrue/' > cv.tex
	xelatex cv.tex
	xelatex cv.tex
	mv cv.pdf cv-res-esp.pdf
	cp cv-org.tex cv.tex
# FULL - ENG
	cat cv-org.tex | sed 's/\%\\engtrue/\\engtrue/' > cv.tex
	xelatex cv.tex
	xelatex cv.tex
	mv cv.pdf cv-eng.pdf
	cp cv-org.tex cv.tex
# RES - ENG
	cat cv-org.tex | sed 's/\%\\engtrue/\\engtrue/' | sed 's/\%\\restrue/\\restrue/' > cv.tex
	xelatex cv.tex
	xelatex cv.tex
	mv cv.pdf cv-res-eng.pdf
	cp cv-org.tex cv.tex
	make clean

clean:
	rm -f *.aux *.log *.out *.bak count.tex cv-org.tex

del:
	rm -f cv-*.pdf
	make clean
