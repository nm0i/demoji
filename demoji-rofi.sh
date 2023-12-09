#!/bin/bash

xdotool_delay=1000

# Symlink expansion
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]
do
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$dir/$source"
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

SCRIPT_NAME=$(basename "$0")
SCRIPT_NAME=${SCRIPT_NAME##*-}
SCRIPT_NAME=${SCRIPT_NAME/.sh/}

menufiles="${dir}/${SCRIPT_NAME}.menu.txt"

if [ "$*" ]
then
    char=$(echo "$*" | awk '{print $1}')
    printf '%s' "${char}" | xsel -b -i
    printf '%s' "%{char}" | xdotool type --delay ${xdotool_delay} --clearmodifiers --file -
    exit 0
else
    cat $menufiles
fi
