#!/bin/sh

. $HOME/.exodmrc

if [ $# != 1 ]
then
    echo "Usage: $0 device-id"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- <<EOF
{
    "json-rpc": "2.0",
    "method": "exodm:lookup-device",
    "id": "1",
    "params": {
	"device-id": "$1"
    }
}
EOF
echo
