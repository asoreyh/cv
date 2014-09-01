rm count.tex
mv cv-org.tex cv.tex
gap=`grep -c "years" publi-gap.tex`
cnf=`grep -c "years" publi-cnf.tex`
ref=`grep -c "years" publi-ref.tex`
org=`grep -c "years" orga.tex`
div=`grep -c "years" divul.tex`

echo "\ifeng
\section*{Publication summary}

% As a member of the International Collaborations I belong, I participated in the publication of:
\else
\section*{Resumen de publicaciones}

% Como miembro de las instituciones a las que pertenezco, he participado en la publicación de:
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
echo '\ifeng
See the complete list of publications, works and scitations in some of the following services:
\else
Ver la lista completa de publicaciones, trabajos y citaciones en alguno de los siguientes servicios:
\fi

\begin{description}
\item[ORCID]: \href{http://orcid.org/0000-0002-4559-8785}{orcid.org/0000-0002-4559-8785}
\item[Google Scholar]: \href{http://scholar.google.com.co/citations?user=Vj7_fGsAAAAJ}{scholar.google.com.co/citations?user=Vj7\_fGsAAAAJ}
\item[Scopus]: \href{http://www.scopus.com/authid/detail.url?authorId=35276880300}{www.scopus.com/authid/detail.url?authorId=35276880300}
\item[Inspire-HEP]: \href{http://inspirehep.net/author/profile/H.Asorey.1}{inspirehep.net/author/profile/H.Asorey.1}
\item[COLCIENCIAS]: \href{http://190.216.132.131:8081/cvlac/visualizador/generarCurriculoCv.do?cod_rh=0000005467}{190.216.132.131:8081/cvlac/visualizador/generarCurriculoCv.do?cod\_rh=0000005467}
\end{description}
' >> count.tex
make
