#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=stratum+tcp://de.alephium.herominers.com:1199
WALLET=19mVWWHemax8EaS7ysx8crWTU9UUC4zvfr5Rzw1TPgf6m

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo blake3 --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo blake3 --pool $POOL --user $WALLET $@
done
