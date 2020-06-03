# Demoji #

Emoji and unicode insertion script using dmenu (or rofi) and xclip.

Edit .bash file if needed, bind to key.

![screenshot](screenshot.png)

## Rofi ##

You can either run rofi in dmenu mode with `rofi -dmenu` or use
demoji-rofi script in config:

    rofi.modi:  run,ssh,unimoji:~/localdocs/demoji/demoji-rofi.sh

Then you can switch to this modi with hotkey, `Ctrl+Tab` by default.
