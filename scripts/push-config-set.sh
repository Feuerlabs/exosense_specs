#!/bin/sh

. $HOME/.exodmrc

if [ $# != 1 ]
then
    echo "Usage: $0 config-set-name"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:push-config-set",
    "id": "1",
    "params":
    {
        "name": "$1"
    }
}
EOF
echo
