#!/bin/sh

. $HOME/.exodmrc

if [ $# -lt 2 ]
then
    echo "Usage: $0 account role user1 user2 ..."
    exit 255
fi

ACCT=$1
shift
ROLE=$1
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


curl -u $ADMIN_AUTH -k -X POST  $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:add-account-users",
    "id": "1",
    "params":
    {
        "account":  "$ACCT" ,
        "role":  "$ROLE",
        "unames": [ $VAL ]
    }
}
EOF
echo
