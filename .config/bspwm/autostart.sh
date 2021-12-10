sxhkd &
#wmname LG3D
xsetroot -cursor_name Bibata-Modern-Classic &
# Wallpaper
feh --bg-fill $HOME/Pictures/wallpaper.png &

# 渲染器
picom &

# polybar
bash $HOME/.config/polybar/launch.sh &

# fcitx5
fcitx5 -d &

# 网络管理GUI
nm-applet &

# 通知
dunst &
