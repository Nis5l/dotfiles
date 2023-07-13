xrandr --output eDP1 --auto --mode 1920x1080 --primary --output DP3 --auto --mode 3440x1440 --left-of eDP1
setxkbmap de nodeadkeys
#dwmstatus 2>&1 > /dev/null &
exec /home/lion/dwm/dwm
