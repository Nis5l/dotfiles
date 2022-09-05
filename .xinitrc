xrandr --output eDP1 --auto --mode 1920x1080 --primary --output HDMI-1-3 --auto --mode 1920x1200 --left-of eDP1
setxkbmap de nodeadkeys
#dwmstatus 2>&1 > /dev/null &
exec /usr/local/bin/dwm
