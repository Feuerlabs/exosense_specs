#!/bin/sh

. $HOME/.exodmrc

if [ $# != 2 ]
then
    echo "Usage: $0 config-set [staged|pending|installed]"
    exit 255
fi

if [ "$2" != "staged" -a "$2" != "pending" -a "$2" != "installed" ]
then
    echo "Please specify staged, pending, or installed for the area of the "
    echo "configuration set you want to examine."
    exit 255
fi

curl -u $USER_AUTH -k -X POST $URL -d @- <<EOF
{
    "json-rpc": "2.0",
    "method": "exodm:read-config-set-data",
    "id": "1",
    "params": {
	"name": "$1",
        "area": "$2"
    }
}
EOF
