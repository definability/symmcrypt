if [[ -z "$1" ]]; then
    END=30
else
    END=$1
fi
TEXT=$(cat)
for i in $(seq 1 $END); do
    echo $TEXT | ./calculate_statistics.sh $i $i | ./calculate_mean.py
done;
