#!/bin/bash
tail -n +5 phendump.2000-2012.1000.maxmode.reclassed.txt | \
awk '{n = split($1, cnt, ":"); label = $2; n = gsub("_", " ", label); n = gsub("&", "\\\\&", label); map = $4; n = gsub("_", " ", map); printf "%s & %s & %s \\\\\n", cnt[1], label, map}' > phendump_235.tex
