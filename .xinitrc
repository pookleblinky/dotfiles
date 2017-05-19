# Keep unity as default
#
setxkbmap -layout us -variant dvorak -option ctrl:nocaps
xsetroot -cursor_name left_ptr
xset s off -dpms
feh --randomize --bg-scale ~/Pictures/wallpaper/*

session=$(1:-unity)

case $session in
    i3|i3wm ) exec i3 --force-xinerama;;
    xmonad  ) exec xmonad;;
    # No known session, try as a command
    *       ) exec $1;;
esac

