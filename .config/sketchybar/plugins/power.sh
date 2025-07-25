#!/bin/bash

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

sketchybar --set ${NAME} icon.color=0xff2d2a2e

if [[ ${CHARGING} != "" ]]; then
    sketchybar --set ${NAME} label="${BATT_PERCENT}%"
    sketchybar --set ${NAME} icon=""
fi



#TODO: Animate between the different charging icons

case ${BATT_PERCENT} in
    100) ICON="" ;;
    9[0-9]) ICON="" ;;
    8[0-9]) ICON="" ;;
    7[0-9]) ICON="" ;;
    6[0-9]) ICON="" ;;
    5[0-9]) ICON="" ;;
    4[0-9]) ICON="" ;;
    3[0-9]) ICON="" ;;
    2[0-9]) ICON="" ;;
    1[0-9]) ICON="" ;;
    *) ICON=""
esac

sketchybar --set ${NAME} icon="${ICON}"
sketchybar --set ${NAME} label="${BATT_PERCENT}%"
