#!/bin/sh

. $HOME/.exodmrc

if [ $# != 3 ]
then
    echo "Usage: $0 set-name yang-spec notification-url"
    exit 255
fi

curl -u $USER_AUTH -k -X POST  $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:create-config-set",
    "id": "1",
    "params":
    {
        "name": "$1",
        "yang": "$2",
        "notification-url": "$3"
    }
}
EOF
echo
