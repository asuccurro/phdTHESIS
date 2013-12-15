for n in 1 2 3 4 5 6 7 8 9
do
cp selCR0.tex selCR${n}.tex
sed -i "s/CR0/CR${n}/g" selCR${n}.tex
done

sed -i 's/SDR0/SDR1/g' selCR5.tex
sed -i 's/SDR0/SDR2/g' selCR1.tex
sed -i 's/SDR0/SDR3/g' selCR2.tex
sed -i 's/SDR0/SDR4/g' selCR3.tex
sed -i 's/SDR0/SDR5/g' selCR4.tex

for n in 6 7 8 9
do
sed -i "s/SDR0/SDR${n}/g" selCR${n}.tex
done