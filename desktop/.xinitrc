#!/bin/bash

# xrandr --setprovideroutputsource 1 0
# xrandr --output HDMI-A-1	--mode 1920x1080 --pos 0x0
# xrandr --output VGA-2-0 	--mode 1920x1080 --pos 1920x0
# xrandr --output DisplayPort-0 	--mode 2560x1440 --pos 3840x0
# xrandr --output DVI-D-0 	--mode 1920x1080 --pos 6400x0

# xrandr --output HDMI-0  --mode 1920x1080 --left-of DP-4
# xrandr --output DP-4    --mode 2560x1440 --primary
# xrandr --output DVI-I-1 --mode 1920x1080 --right-of DP-4
#
# force_full_composition_pipeline_all () {
#   regex="(\S+).*connected.*[^0-9]([0-9]+x[0-9]+)(\+[0-9]+\+[0-9]+)"
#
#   while read -r line
#   do
#     if [[ $line =~ $regex ]]
#     then
#       PORT="${BASH_REMATCH[1]}"
#       RES="${BASH_REMATCH[2]}"
#       POS="${BASH_REMATCH[3]}"
#
#       nvidia-settings --assign CurrentMetaMode="$PORT:$RES $POS { ForceFullCompositionPipeline = On }"
#     fi
#   done < <(xrandr)
# }

# force_full_composition_pipeline_all

# nvidia-settings --assign CurrentMetaMode="DP-4:2560x1440 +0+0 { ForceFullCompositionPipeline = On }"


# xset s off dpms 0 1200 1800	# disable blanking, suspend after 20 minutes, off after 30

xrandr --output DP-0   --mode 3840x2160 --rate 60 --primary --auto
xrandr --output DP-4   --mode 2560x1440 --rate 60 --left-of DP-0 --auto
xrandr --output HDMI-0 --mode 2560x1440 --rate 60 --right-of DP-0 --auto

# xrandr --output HDMI-0  --mode 1920x1080 --left-of DP-1 --auto

export TERMINAL=urxvt

xrdb -merge ~/.Xresources

feh --bg-scale /home/dan/bg2.jpg

# MOUSE_SPEED = 1.5
# xinput set-prop "La-VIEW Technology SteelSeries" "Coordinate Transformation Matrix" ${MOUSE_SPEED}, 0.000000, 0.000000, 0.000000, ${MOUSE_SPEED}, 0.000000, 0.000000, 0.000000, 1.000000

# needed for pulse audio apparently
#exec dbus-launch --sh-syntax --exit-with-session herbstluftwm

exec ssh-agent herbstluftwm

