#!/bin/bash
cd ${TERRARIA_DIR}/Logs
rm Log_*.log
until compgen -G "${TERRARIA_DIR}/Logs/Log_*.log" > /dev/null; do
    sleep 1
    echo "Waiting for log file"
done
tail -n +1 -f Log_*.log>server.log
