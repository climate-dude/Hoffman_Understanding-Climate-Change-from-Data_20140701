#!/bin/bash
tail -n +2 phendump.2000-2012.1000.maxmode.reclassed_level2.summary.txt | \
awk '{n = split($1, cat, ":"); label = $2; n = gsub("_", " ", label); n = gsub("&", "\\\\&", label); map = $4; n = gsub("_", " ", map); n = gsub("]", "", map); pct = $NF; n = gsub("%", "\\%", pct); printf "%d & %s & %s & %s & %s \\\\\n", NR, cat[1], label, map, pct}' > phendump_197.tex
