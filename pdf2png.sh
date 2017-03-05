
pdffile=$1
pngfile=$2

pdfname=`echo ${pdffile} | awk -F\/ '{print $NF}'` 
pngname=`echo ${pngfile} | awk -F\/ '{print $NF}'`

echo ${pdfname}
echo ${pngname}

echo ${pdffile}

scp ${pdffile} aban@115.156.232.111:~/

ssh aban@115.156.232.111 convert -verbose -density 150 -trim ${pdfname} -quality 100 -flatten -sharpen 0x1.0 ${pngname}
scp aban@115.156.232.111:~/${pngname} ${pngfile}
ssh aban@115.156.232.111 rm ${pdfname} ${pngname}


