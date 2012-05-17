CODE=cv
NAME=${CODE}-eng

all:
	xelatex ${NAME}.tex
	xelatex ${NAME}.tex

clean:
	rm -f *.aux *.log *.out *.bak

del:
	rm ${NAME}.pdf 
	make clean
