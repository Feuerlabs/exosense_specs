#!/bin/sh

. $HOME/.exodmrc

if [ $# != 1 ]
then
    echo "Usage: $0 group-id"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:delete-device-group",
    "id": "1",
    "params":
    {
        "group-id": $1
    }
}
EOF
