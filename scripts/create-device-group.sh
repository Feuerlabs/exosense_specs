#!/bin/sh

. $HOME/.exodmrc

if [ $# != 2 ]
then
    echo "Usage: $0 group-name notification-url"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:create-device-group",
    "id": "1",
    "params":
    {
        "name": "$1",
        "notification-url": "$2"
    }
}
EOF
