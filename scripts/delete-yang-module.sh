#!/bin/sh
#   Delete yang module
#
. $HOME/.exodmrc

if [ $# != 2 ]
then
    echo "Usage: $0 <user|system> <name>"
    exit 255
fi

if [ "$REPO" = "system" ]
then
    AUTH=$ADMIN_AUTH
else
    AUTH=$USER_AUTH
fi

curl -u $AUTH -k -X POST $URL -d @- <<EOF
{
    "json-rpc": "2.0",
    "method": "exodm:delete-yang-module",
    "id": "1",
    "params": {
        "repository": "$1",
	"name": "$2"
    }
}
EOF
echo
