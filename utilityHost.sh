# ! /bin/bash

option="Opcion"
result="Resultado"

echo "$option"
echo "$result"

#Create log file
log_file=log_`date +_%Y%m%d%H%M%S`.txt
touch $log_file
echo "Opcion: $option y Resultado: $result" >> $log_file
ls -la $log_file
