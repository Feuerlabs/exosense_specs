#!/bin/sh

. $HOME/.exodmrc

if [ $# -ne 2 ]
then
    echo "Usage: $0 config-set devid"
    exit 255
fi

echo "CFG_SET = $CFG_SET"
echo "VAL = $VAL"

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:add-config-set-members",
    "id": "1",
    "params":
    {
        "name": [ "$1" ],
        "device-id": [ "$2" ]
    }
}
EOF
echo
