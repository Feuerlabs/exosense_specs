#!/bin/sh

. $HOME/.exodmrc

if [ $# != 5 ]
then
    echo "Usage: $0 acct app-id orig-msisdn cons-key secret"
    exit 255
fi

curl -u $USER_AUTH -k -X POST  $URL -d @- << EOF
{
    "jsonrpc": "2.0",
    "method": "exodm:set-mblox-parameters",
    "id": "1",
    "params":
    {
        "account": "$1",
        "application-id": "$2",
        "originating-msisdn": "$3",
        "consumer-key": "$4",
        "secret-key": "$5"
    }
}
EOF
echo
