#!/bin/sh

. $HOME/.exodmrc

if [ $# -lt 2 ]
then
    echo "Usage: $0 config-set-name notification-url [ key value key value... ]"
    exit 255
fi

CFG_SET=$1
NOTIFICATION_URL=$2
shift
shift
FIRST_ENTRY=true
VAL="{ }"
while [ "$#" -gt "0" ]
do
    if [ "$FIRST_ENTRY" = "true" ]
    then
	VAL="{ \"$1\": \"$2\" }"
	FIRST_ENTRY=false
    else
	VAL="$VAL, { \"$1\": \"$2\" }"
    fi
    shift
    shift
done

curl -u $USER_AUTH -k -X POST $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:update-config-set",
    "id": "1",
    "params":
    {
        "name": "$CFG_SET",
        "notification-url": "$NOTIFICATION_URL",
        "values": $VAL
    }
}
EOF
echo
