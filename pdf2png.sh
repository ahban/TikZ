
pdffile=$1

pngfile=$2


scp ${pdffile} aban@115.156.232.111:~/

ssh aban@115.156.232.111 convert -verbose -density 150 -trim ${pdffile} -quality 100 -flatten -sharpen 0x1.0 ${pngfile}
scp aban@115.156.232.111:~/${pngfile} .
ssh aban@115.156.232.111 rm ${pdffile} ${pngfile}


