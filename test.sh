#! /bin/bash

STATUS=0

function echoGood {
    echo -e "\e[32mSuccess: $1\e[0m"
}

function echoBad {
    echo -e "\e[31mFail: $1\e[0m"
}

function testContains {
    if echo "$1" | grep "$2" > /dev/null
    then
        echoGood "$3"
    else
        echoBad "$3"
        STATUS=1
    fi
}

specialVersion=`docker exec temp-mw curl -fsSL http://localhost/wiki/Special:Version`

testContains "$specialVersion" "Jeroen De Dauw" "Can reach Special:Version"
testContains "$specialVersion" "Vector" "Vector is listed on Special:Version"

apiPhp=`docker exec temp-mw curl -fsSL http://localhost/w/api.php`

testContains "$apiPhp" "/w/api.php?action=help&amp;modules=edit" "Can reach api.php"

exit $STATUS