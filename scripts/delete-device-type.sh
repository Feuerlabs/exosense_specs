#!/bin/sh

. $HOME/.exodmrc

if [ $# != 1 ]
then
    echo "Usage: $0 name"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:delete-device-type",
    "id": "1",
    "params":
    {
        "name": "$1"
    }
}
EOF
