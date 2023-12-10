#!/bin/bash

xdotool_delay=16

_menu () {
    if [[ -f $(which rofi) ]]
    then
        rofi -dmenu -p 'demoji'
    else
        dmenu -p 'demoji'
    fi
}

# Symlink expansion
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]
do
    dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
    source="$(readlink "$source")"
    [[ $source != /* ]] && source="$dir/$source"
done
dir="$( cd -P "$( dirname "$source" )" >/dev/null 2>&1 && pwd )"
script_name=$(basename "$0")
script_name=${script_name##*-}
script_name=${script_name/.sh/}

if [[ $script_name == "demoji" ]]
then
    menufiles="${dir}/*.menu.txt"    
else
    menufiles="${dir}/${script_name}.menu.txt"    
fi
char=$(cat $menufiles | _menu | awk '{print $1}')

printf '%s' "${char}" | xsel -b -i
printf '%s' "${char}" | xdotool type --delay ${xdotool_delay} --clearmodifiers --file -
exit 0

