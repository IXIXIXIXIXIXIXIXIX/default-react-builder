#!/bin/bash

if [ $# -eq 0 ]
then
    RED='\033[0;31m'
    NC='\033[0m'
    printf "${RED}Error:${NC} application name required as argument\n"
else
    PROJNAME="$1"

    mkdir "$PROJNAME"
    cd "$PROJNAME"
 
    npx create-react-app -y "$PROJNAME" .  
    rm yarn.lock
    npm install --save-dev --save-exact prettier
    npm install --save-dev eslint-config-prettier
    npm install eslint --save-dev
    npm install eslint-config-airbnb --save-dev
    export PKG=eslint-config-airbnb;
    npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest"


    cp -R ~/tools/new-react-project/configs/. .
fi

