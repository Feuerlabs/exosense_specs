#!/bin/sh

. $HOME/.exodmrc

if [ $# -lt 2 ]
then
    echo "Usage: $0 device-group device-id1 device-id2 ..."
    exit 255
fi

GROUPID=$1
shift
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

echo "GROUPID = $GROUPID"
echo "VAL = $VAL"

curl -u $USER_AUTH -k -X POST  $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:add-device-group-members",
    "id": "1",
    "params":
    {
        "group-id": [ "$GROUPID" ],
        "device-id": [ $VAL ]
    }
}
EOF
