#!/bin/sh

. $HOME/.exodmrc

if [ $# -lt 1 ]
then
    echo "Usage: $0 device-id [device-id2 [...]]"
    exit 255
fi

FIRST_ENTRY=true
while [ "$#" -gt "0" ]
do
    if [ "$FIRST_ENTRY" = "true" ]
    then
        VAL="\"$1\""
        FIRST_ENTRY=false
    else
        VAL="$VAL, \"$1\""
    fi
    shift
done

echo "VAL = $VAL"

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:delete-devices",
    "id": "1",
    "params":
    {
        "device-id": [ $VAL ]
    }
}
EOF
