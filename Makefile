CODE=cv
NAME=${CODE}

all:
	xelatex ${NAME}.tex
	xelatex ${NAME}.tex

clean:
	rm ${NAME}.aux 
	rm ${NAME}.log 
	rm ${NAME}.out 
del:
	rm ${NAME}.pdf 
	make clean
