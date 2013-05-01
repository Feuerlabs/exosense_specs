#!/bin/sh
#   List yang spec
#
. $HOME/.exodmrc

if [ $# != 3 ]
then
    echo "Usage: $0 <user|system> <batch> <prev>"
    exit 255
fi

if [ "$1" = "system" ]
then
    AUTH=$ADMIN_AUTH
else
    AUTH=$USER_AUTH
fi

curl -u $AUTH -k -X POST $URL -d @- <<EOF
{
    "json-rpc": "2.0",
    "method": "exodm:list-yang-modules",
    "id": "1",
    "params": {
        "repository": "$1",
	"n": $2,
	"previous": "$3"
    }
}
EOF
echo
