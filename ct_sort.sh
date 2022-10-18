#!/bin/bash

#create a header

echo "FileName","GOI","Reference_gene","Ct_GOI","Ct_Refgene" > Ct_report.csv

#append lines containing the gene(s) of interest to csv file

while read -r line;
do
if echo "$line" | grep -q "GAPDH"; then
echo "$line"
fi
done < BAX.csv > output.csv 

while read -r line;
do
if echo "$line" | grep -q "BAX"; then
echo "$line"
fi
done < BAX.csv >> output.csv

while read -r line;
do
if echo "$line" | grep -q "Bcl2"; then
echo "$line"
fi
done < Bcl-2.csv >> output.csv
while read -r line;
do
if echo "$line" | grep -q "IL-6"; then
echo "$line"
fi
done < IL-6.csv >> output.csv

while read -r line;
do
if echo "$line" | grep -q "IL-10"; then
echo "$line"
fi
done < IL-10.csv >> output.csv

while read -r line;
do
if echo "$line" | grep -q "TNF"; then
echo "$line"
fi
done < TNF.csv >> output.csv

#trim colums

cut -d ',' -f 3,5,6,7,8 output.csv > output1.csv

sed '/[^,]*rt/d' output1.csv > output2.csv

sed '/[^,]* /d' output2.csv >> Ct_report.csv


#delete tempfiles

rm output.csv
rm output1.csv
rm output2.csv
