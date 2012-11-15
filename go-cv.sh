rm count.tex
mv cv-org.tex cv.tex
gap=`grep -c "years" publi-gap.tex`
cnf=`grep -c "years" publi-cnf.tex`
ref=`grep -c "years" publi-ref.tex`
org=`grep -c "years" orga.tex`
div=`grep -c "years" divul.tex`

echo "\ifeng
\section*{Summary}
\else
\section*{Resumen}
\fi

\begin{itemize}
" >> count.tex

echo "\item \ifeng
{\bf{${ref}}} peer review journal publications.\\
\else
{\bf{${ref}}} publicaciones en revistas con referato.\\
\fi
" >> count.tex

echo "\item \ifeng
{\bf{${cnf}}} participations and presentations at Schools \& Conferences.\\
\else
{\bf{${cnf}}} participaciones y presentaciones en Escuelas y Conferencias.\\
\fi
" >> count.tex

echo "\item \ifeng
{\bf{${gap}}} technical notes (GAP Notes) of the Pierre Auger Observatory. 
\else
{\bf{${gap}}} notas técnicas (GAP Notes) del Observatorio Pierre Auger. 
\fi
" >> count.tex

echo "\end{itemize}" >> count.tex
make
