#!/bin/sh

. $HOME/.exodmrc

if [ $# != 3 ]
then
    echo "Usage: $0 device-type-name batch-size previous-device-type (\"\" start from beginning)"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- <<EOF
{
    "json-rpc": "2.0",
    "method": "exodm:list-device-type-members",
    "id": "1",
    "params": {
        "name": "$1",
	"n": $2,
	"previous": "$3"
    }
}
EOF
