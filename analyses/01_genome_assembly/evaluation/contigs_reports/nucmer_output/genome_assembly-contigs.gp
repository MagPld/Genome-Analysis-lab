set terminal canvas jsdir ""
set output "/domus/h1/magdap/genome_analyses/Genome-Analysis-lab/analyses/01_genome_assembly/evaluation/contigs_reports/nucmer_output/genome_assembly-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "300000" 300000, \
 "600000" 600000, \
 "900000" 900000, \
 "1200000" 1200000, \
 "1500000" 1500000, \
 "1800000" 1800000, \
 "2100000" 2100000, \
 "2400000" 2400000, \
 "" 2610531 \
)
set ytics ( \
 "0" 0, \
 "300000" 300000, \
 "600000" 600000, \
 "900000" 900000, \
 "1200000" 1200000, \
 "1500000" 1500000, \
 "1800000" 1800000, \
 "2100000" 2100000, \
 "2400000" 2400000, \
 "" 2623952 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:2610531]
set yrange [1:2623952]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/domus/h1/magdap/genome_analyses/Genome-Analysis-lab/analyses/01_genome_assembly/evaluation/contigs_reports/nucmer_output/genome_assembly-contigs.fplot" title "FWD" w lp ls 1, \
 "/domus/h1/magdap/genome_analyses/Genome-Analysis-lab/analyses/01_genome_assembly/evaluation/contigs_reports/nucmer_output/genome_assembly-contigs.rplot" title "REV" w lp ls 2
