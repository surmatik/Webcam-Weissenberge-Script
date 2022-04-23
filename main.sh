#!/bin/bash

rm 9.txt

anzahl=$(find ${SOURCE} -type f | wc -l)
echo $anzahl

let jetzt=$anzahl-1
echo "Variable jetzt am Anfang: " $jetzt
neu=$anzahl
echo "Variable neu am Anfang: " $neu
i=0

#cd /var/www/html/webcam

while [ $i -lt $anzahl ]
do
  echo $i
  echo "Jetzt: " $jetzt
  echo "Neu: " $neu

  mv $jetzt.txt $neu.txt

  let i=$i+1
  let jetzt=$jetzt-1
  let neu=$neu-1
done


touch 1.txt
#fswebcam -F 50 -r 1280x720 webcam$d.jpg
