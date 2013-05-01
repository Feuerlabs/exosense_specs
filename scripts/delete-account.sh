#!/bin/sh
#  Create new accounts, like the ga account
#  But other accounts may be create
. $HOME/.exodmrc

if [ $# != 1 ]
then
    echo "Usage: $0 name"
    exit 255
fi
# the password (actually erlang node cookie) must be 100% hidden 
# so this is only for testing!!!!!
curl -u $ADMIN_AUTH -k -X POST  $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:delete-account",
    "id": "1",
    "params":
    {
        "name": "$1"
    }
}
EOF
