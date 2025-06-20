#!/bin/bash

set -eo pipefail

readonly ERR_NO_ARG=1

if [ $# -ne 2 ]
then
    echo "Usage: $0 <host> <port>"
    exit $ERR_NO_ARG
fi

HOST="$1"
PORT="$2"
LOG_FILE="port_check.log"

# в ТЗ запись в лог только в случае недоступности
MSG="[$(date '+%Y-%m-%d %H:%M:%S')] Port $PORT on $HOST is closed"

if command -v nc &> /dev/null
then
    # проверим с помощью nc
    nc -z -w 3 "$HOST" "$PORT" || echo "$MSG" >> "$LOG_FILE"
else
    # проверим на чистом bash
    (echo > /dev/tcp/$HOST/$PORT) &> /dev/null || echo "$MSG" >> "$LOG_FILE"
fi

