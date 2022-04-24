#!/bin/bash
echo -ne "Ведіть назву файлу для подальшої заміни\n\t\t (не менше 14 символів та не менше 4 символів підряд)"
read firstfilename
if [[ -f $firstfilename ]]
then
 if [[ ${#firstfilename} -lt 14 || $firstfilename =~ [0-9]{1,2,3} ]]
 then 
 echo "Назва файлу не є коректною,оскільки не відповідає заданій умові"
 else 
  echo -ne "Введіть назву файлу за тих же умовах для заміни"
  read secondfilename
   if [[ -f $secondfilename ]]
    then
     echo "Такий файл вже існує"
   else
      if [[ ${#secondfilename} -lt 14 || $secondfilename =~ [0-9]{1,2,3} ]]
        then
        echo "Назва файлу не є коректною,оскільки не відповідає заданій умові"
      else 
      mv "$firstfilename" "$secondfilename"
      fi
     fi 
    fi 
else
echo "Такого файлу нема"
fi