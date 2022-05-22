#!/bin/bash
paste map1.reclass.igbp.txt map1.reclass.oge.txt | more | awk 'BEGIN {printf "\\begin{tabular}{cll}\n"; printf "\\textbf{Cluster} & \\textbf{IGBP Land Cover} & \\textbf{Olsons Global Ecoregions} \\\\\n";} {printf "%s & %s & %s \\\\\n", $1, $4, $8} END {printf "\\end{tabular}\n";}' | sed 's/_/ /g'
