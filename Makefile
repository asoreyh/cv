all:
	cp cv.tex cv-org.tex
# FULL - ESP
	echo "FULL - ESP"
	xelatex cv.tex
	echo "FULL - ESP"
	xelatex cv.tex
	echo "FULL - ESP"
	xelatex cv.tex
	mv cv.pdf asorey-cv-esp.pdf
	cp cv-org.tex cv.tex
	make clean
# RES - ESP
	cat cv-org.tex | sed 's/\%\\restrue/\\restrue/' > cv.tex
	echo "RES - ESP"
	xelatex cv.tex
	echo "RES - ESP"
	xelatex cv.tex
	echo "RES - ESP"
	xelatex cv.tex
	mv cv.pdf asorey-cv-res-esp.pdf
	cp cv-org.tex cv.tex
	make clean
# FULL - ENG
	cat cv-org.tex | sed 's/\%\\engtrue/\\engtrue/' > cv.tex
	echo "FULL - ENG"
	xelatex cv.tex
	echo "FULL - ENG"
	xelatex cv.tex
	echo "FULL - ENG"
	xelatex cv.tex
	mv cv.pdf asorey-cv-eng.pdf
	cp cv-org.tex cv.tex
	make clean
# RES - ENG
	cat cv-org.tex | sed 's/\%\\engtrue/\\engtrue/' | sed 's/\%\\restrue/\\restrue/' > cv.tex
	echo "RES - ENG"
	xelatex cv.tex
	echo "RES - ENG"
	xelatex cv.tex
	echo "RES - ENG"
	xelatex cv.tex
	mv cv.pdf asorey-cv-res-eng.pdf
	cp cv-org.tex cv.tex
	make clean
	rm cv-org.tex count.tex

clean:
	rm -f *.aux *.log *.out *.bak

del:
	rm -f cv-*.pdf
	make clean
