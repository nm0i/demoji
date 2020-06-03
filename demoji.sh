#!/bin/bash

# Dmenu exec
#dmenu="rofi -dmenu -fuzzy"
dmenu="dmenu"

# This fancy section mearly expands symlinks
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]
do
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$dir/$source"
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"

# https://unicode.org/Public/emoji/"
menufiles="$dir/*.menu.txt"

char=$(cat $menufiles | eval $dmenu|awk '{print $1}')

printf "${char}"|xclip -selection clipboard
