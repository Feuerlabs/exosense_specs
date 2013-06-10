#!/bin/sh
#   Upload/Create user yang spec
#
. $HOME/.exodmrc

if [ "$#" = "1" ]
then
    REPO=user
    YANG_FILE=$1
elif [ "$#" = "2" ]
then
    REPO=$1
    YANG_FILE=$2
else
    echo "Usage: $0 [user|system] yang-file"
    exit 255
fi


if [ ! -f $YANG_FILE ]
then
    echo "File $1 is not readable."
    exit 255
fi

if [ "$REPO" = "system" ]
then
    AUTH=$ADMIN_AUTH
else
    AUTH=$USER_AUTH
fi

#sed 's/\\/\\\\/g' < $YANG_FILE | sed  's/"/\\"/g'  > /tmp/create_yang_module.tmp
# curl -u $AUTH -k -X POST http://localhost:1234 --data-binary @- << EOF

BASE_YANG=$(basename $YANG_FILE)
# Create a file containing the actual call
cat > /tmp/yang.json << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:create-yang-module",
    "id": "1",
    "params":
    {
        "name": "$BASE_YANG",
        "repository": "$REPO",
        "yang-module": "file:$BASE_YANG"
    }
}
EOF

curl -u $AUTH -k $URL -F file="@${YANG_FILE};filename=$BASE_YANG" -F jsonrpc=@/tmp/yang.json
echo
