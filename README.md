# Demoji #

Character picker for rofi, dmenu.

Script will push selected character into the clipboard and will type
it in active window.

## Screenshot ##

![screenshot](screenshot.png)

## Requirements ##

rofi, bash, xsel, xdotool

## Installation ##

1. Clone repo somewhere.
2. Symlink script into your $PATH. 
3. Bind it to a key in your wm or compositor.

## Menu selection ##

By default, script concatenates all *.menu.txt files in its run directory.

You can select which menu you want or add your own menus by default
renaming the script or choosing appropriate link name.

Symlink desired menus to your ~/bin/ or ~/.local/bin/ direcrories,
or any other directory from your $PATH:

    cd ~/bin/
    ln -s ~/path/to/repo/demoji.sh demoji-unicode.sh
    ln -s ~/path/to/repo/demoji.sh demoji-emoji.sh
    
Symlink name will be used to figure out which menu you do want.    

Then bind desired calls to keys in your wm, compositor or keyboard manager.

## Fonts ##

Emoji fonts, such as Noto Emoji, are highly recommended for proper
menu rendering.

## See also ## 

<https://github.com/Mange/rofi-emoji>

## List sources ##

[Emoji](https://unicode.org/Public/emoji/)
