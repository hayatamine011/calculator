cd /home/atakama-operator
duree_mn=$1
date=$2
heure=$3
duree_sec=`expr $duree_mn \* 60`
nohup nmon -s 10 -c `expr $duree_sec / 10` -m /home/atakama-operator -F MyAuto-V1_${date}_${heure}.nmon -t &
