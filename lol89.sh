#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=asia2.ethermine.org:5555
WALLET=0xe338e3f3a65e095aeb868b48454f1d01d11e8f31 

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
