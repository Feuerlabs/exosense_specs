#!/bin/sh

. $HOME/.exodmrc

if [ $# != 2 ]
then
    echo "Usage: $0 name protocol"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:update-device-type",
    "id": "1",
    "params":
    {
        "name": "$1",
        "protocol": "$2"
    }
}
EOF
echo
