#!/bin/sh

. $HOME/.exodmrc

if [ $# != 5 ]
then
    echo "Usage: $0 device-id device-type config-set server-key device-key"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:create-device",
    "id": "1",
    "params":
    {
        "device-id": "$1",
        "device-type": "$2",
        "server-key": $4,
        "device-key": $5,
        "msisdn": "+467331231234"
    }
}
EOF

curl -u $USER_AUTH -k -X POST $URL -d @-  <<EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:add-config-set-members",
    "id": "1",
    "params":
    {
        "name": [ "$3" ],
        "device-id": [ "$1" ]
    }
}
EOF
