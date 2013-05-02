#!/bin/sh

. $HOME/.exodmrc

if [ $# -lt 2 ]
then
    echo "Usage: $0 config-set devid1 devid2 ..."
    exit 255
fi

CFG_SET=$1
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

echo "CFG_SET = $CFG_SET"
echo "VAL = $VAL"

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:remove-config-set-members",
    "id": "1",
    "params":
    {
        "name": [ "$CFG_SET" ],
        "device-id": [ $VAL ]
    }
}
EOF
echo
