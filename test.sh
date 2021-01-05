#! /bin/bash

if docker exec temp-mw curl -fsSL http://localhost/wiki/Special:Version | grep "Jeroen De Dauw" > /dev/null
then
    echo -e "\e[32mWiki works\e[0m"
    exit 0
else
    echo -e "\e[31mWiki is broken\e[0m"
    exit 1
fi
