ingresado=$1
if [ -z $ingresado ]
then
echo  "no existe"
elif [ -d $ingresado  ] 
then
echo "es un directorio"
elif [ -f $ingresado ] 
then 
echo "es un archivo"
else
echo "no existe"
fi


