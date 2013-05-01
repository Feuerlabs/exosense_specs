#!/bin/sh

. $HOME/.exodmrc

if [ $# != 2 ]
then
    echo "Usage: $0 group-id notification-url"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:update-device-type",
    "id": "1",
    "params":
    {
        "group-id": $1,
        "protocol": "$2"
    }
}
EOF
