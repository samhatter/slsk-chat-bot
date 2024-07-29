#!/bin/bash
cd /slskd
./slskd & slskd_pid=$!

# counter=0
# while true
# do
#     sleep 5
#     if (( counter % 2 == 0 )); then
#         message="I LOVE LOLI CUNNY XD!!!"
#     else
#         message="I LOVE SHOTA COCKLETTES XD!!!"
#     fi
    
#     counter=$((counter + 1))
    
#     curl -X 'POST' \
#     "http://0.0.0.0:$SLSKD_HTTP_PORT/api/v0/rooms/joined/$SLSKD_ROOMS/messages" \
#     -H 'accept: */*' \
#     -H 'Content-Type: application/json' \
#     -d "\"$message\""
# done
