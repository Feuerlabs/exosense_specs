#!/bin/sh

. $HOME/.exodmrc

if [ $# != 2 ]
then
    echo "Usage: $0 batch-size previous-device (\"\" start from beginning)"
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- <<EOF
{
    "json-rpc": "2.0",
    "method": "exodm:list-devices",
    "id": "1",
    "params": {
	"n": $1,
	"previous": "$2"
    }
}
EOF
echo
