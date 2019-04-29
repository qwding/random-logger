#!/bin/sh

init() {
    for i in `seq 1 ${BATCH:-100}`; do
        echo "output:test$i"
    done
}

data="`init`"
while [ 1 ]
do
#    waitTime=$(shuf -i 1-5 -n 1)
#    sleep $waitTime * 0.01 &
#    wait $!
    sleep ${INTERVAL:-0.1}
    echo "$data"
done
