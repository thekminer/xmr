#!/bin/bash
FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.0/SRBMiner-Multi-0-8-0-Linux.tar.xz
    tar xvf SRBMiner-Multi-0-8-0-Linux.tar.xz
fi
echo "Worker name?"
read worker_name
screen -dmLS mine ./SRBMiner-Multi-0-8-0/SRBMiner-MULTI --disable-gpu --algorithm randomx --pool us-west.minexmr.com:4444 --wallet 85SeXvaQR1v5zxpDrCL7osSEbJT73SQ5n1VT2qQ8bAPciguBqtTaNReQM5NSmEwLAJ3XN97g7sSizPRcbC5gpH3rD8Lymod --worker worker_name
