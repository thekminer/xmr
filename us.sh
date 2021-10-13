#!/bin/bash
FILE=./xmrig-6.15.2-focal-x64.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/xmrig/xmrig/releases/download/v6.15.2/xmrig-6.15.2-focal-x64.tar.gz
    tar xvf xmrig-6.15.2-focal-x64.tar.gz
fi
screen -dmLS mine ./xmrig-6.15.2/xmrig -o us-west.minexmr.com:4444 -u 85SeXvaQR1v5zxpDrCL7osSEbJT73SQ5n1VT2qQ8bAPciguBqtTaNReQM5NSmEwLAJ3XN97g7sSizPRcbC5gpH3rD8Lymod -k --coin monero
