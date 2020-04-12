mkdir "$1/Chapter $2"
cd "$1/Chapter $2"
[ ! -f source.tex ] && echo "\\\chapter{}\n\t\\input{\"Section $2.1/source.tex\"}" >> source.tex && echo "\\documentclass[oneside]{book}\n\n\\usepackage{amsthm}\n\n\\\newtheorem{theorem}{THEOREM}[section]\n\n\\\begin{document}\n\t\\input{source.tex}\n\\end{document}" >> notes.tex
mkdir "Section $2.$3"
cd "Section $2.$3"
[ ! -f source.tex ] && echo "\\section{}" >> source.tex && echo "\\documentclass[oneside]{book}\n\n\\usepackage{amsthm}\n\n\\\newtheorem{theorem}{THEOREM}[section]\n\n\\\begin{document}\\n\\t\\input{source.tex}\\n\\end{document}" >> notes.tex
