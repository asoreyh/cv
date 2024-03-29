rm count.tex
mv cv-org.tex cv.tex
gap=`grep -c "years" 08-publi-gap.tex`
cnf=`grep -c "years" 07-publi-cnf.tex`
ref=`grep -c "years" 06-publi-ref.tex`
org=`grep -c "years" 09-orga.tex`
div=`grep -c "years" 10-divul.tex`
# form
pc=`grep -c "%% phd-cur" 04-rrhh-form.tex`
phd=`grep -c "%% phd" 04-rrhh-form.tex`
msc=`grep -c "%% mag" 04-rrhh-form.tex`
und=`grep -c "%% pre" 04-rrhh-form.tex`
pdo=`grep -c "%% pdo" 04-rrhh-form.tex`
tot=`grep -c "%% " 04-rrhh-form.tex`

# pc=`grep -c "%% phd-cur" rrhh-form.tex`
# mc=`grep -c "%% mag-cur" rrhh-form.tex`
# uc=`grep -c "%% pre-cur" rrhh-form.tex`
# pe=`grep -c "%% phd-end" rrhh-form.tex`
# me=`grep -c "%% mag-end" rrhh-form.tex`
# ue=`grep -c "%% pre-end" rrhh-form.tex`

echo "
\ifeng
\section*{Human Resources Training Summary}

Up to now, I am training or I have successfully trained a total of {\bf{${tot}}} students and fellows, {\bf{${pdo}}}
Post Doctoral researchers, {\bf{${phd}}} PhD students, {\bf{${msc}}} MSc students and {\bf{${und}}} undergraduated
students in Argentina, Venezuela and Colombia.

\else
\section*{Formación de Recursos Humanos}

Hasta el momento, me encuentro formando o he finalizado la formación de un total de {\bf{${tot}}} estudiantes y becarios:
{\bf{${pdo}}} investigadores posdoctorales, {\bf{${phd}}} estudiantes de la carrera del Doctorado en Física, {\bf{${msc}}} de la carrera de Maestría en Física y
{\bf{${und}}} de Licenciatura en Física en Argentina, Venezuela y Colombia.
\fi
" >> count.tex

# Pubs

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
 {\bf{${gap}}} technical reports of Comisión Nacional de Energía Atómica and internal technical notes of the Pierre Auger Observatory. 
\else
{\bf{${gap}}} reportes técnicos de la Comisión Nacional de Energía Atómica y notas técnicas (GAP Notes) del Observatorio Pierre Auger. 
\fi
" >> count.tex

echo "\end{itemize}" >> count.tex
echo '\ifeng
See the complete list of publications, works and scitations in some of the following services:
\else
Ver la lista completa de publicaciones, trabajos y citaciones en alguno de los siguientes servicios:
\fi

\begin{description}
% \item[ORCID]: \href{http://orcid.org/0000-0002-4559-8785}{orcid.org/0000-0002-4559-8785}
\item[Google Scholar]: \href{http://scholar.google.com.co/citations?user=Vj7_fGsAAAAJ}{scholar.google.com.co/citations?user=Vj7\_fGsAAAAJ}
\item[Scopus]: \href{http://www.scopus.com/authid/detail.url?authorId=35276880300}{www.scopus.com/authid/detail.url?authorId=35276880300}
\item[Inspire-HEP]: \href{http://inspirehep.net/author/profile/H.Asorey.1}{inspirehep.net/author/profile/H.Asorey.1}
% \item[COLCIENCIAS]: \href{http://190.216.132.131:8081/cvlac/visualizador/generarCurriculoCv.do?cod_rh=0000005467}{190.216.132.131:8081/cvlac/visualizador/generarCurriculoCv.do?cod\_rh=0000005467}
\end{description}
' >> count.tex
make