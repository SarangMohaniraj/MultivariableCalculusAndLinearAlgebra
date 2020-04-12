# Arguments:
#   $1: Course Name, must be same as directory name
#   $2: Chapter
#   $3: Section
let cc=$2-1 # chapter counter
let sc=$3-1 # section counter
mkdir "$1/Chapter $2"
cd "$1/Chapter $2"
[ ! -f source.tex ] && echo "\\\chapter{}\n\t\\input{\"Section $2.1/source.tex\"}" >> source.tex && echo "\\documentclass[oneside]{book}\n\n\\usepackage{amsthm}\n\n\\\newtheorem{theorem}{THEOREM}[section]\n\n\\\begin{document}\n\t\\setcounter{chapter}{$cc}\n\t\\input{source.tex}\n\\end{document}" >> notes.tex
mkdir "Section $2.$3"
cd "Section $2.$3"
[ ! -f source.tex ] && echo "\\section{}" >> source.tex && echo "\\documentclass[oneside]{book}\n\n\\usepackage{amsthm}\n\n\\\newtheorem{theorem}{THEOREM}[section]\n\n\\\begin{document}\n\t\\setcounter{chapter}{$2}\n\t\\setcounter{section}{$sc}\\n\\t\\input{source.tex}\\n\\end{document}" >> notes.tex