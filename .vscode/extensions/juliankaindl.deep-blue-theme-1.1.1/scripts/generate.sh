#!/usr/bin/env zsh

if RAW=$(curl -f --silent $1); then
    cd demos/

    FILENAME=$(
        echo $1         | 
        rev             | 
        cut -d "/" -f 1 | 
        rev
    )  

    touch $FILENAME

    echo $RAW > $FILENAME
else
    echo "\033[0;31mERROR: \033[0m'$1' is not a valid URL"
fi;
