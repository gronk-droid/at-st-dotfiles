#!/bin/bash

# CHARGING=$(pmset -g batt | grep 'AC Power')
# if [[ ${CHARGING} != "" ]]; then
#     BATT_SCRIPT="charging.sh"
#     BATT_ICON_SIZE="$FONT:Regular:26.0"
# else
#     BATT_SCRIPT="battery.sh"
#     BATT_ICON_SIZE="$FONT:Regular:13.0"
# fi

BATT_SCRIPT="battery.sh"
BATT_ICON_SIZE="$FONT:Regular:13.0"



sketchybar  --add       item              battery left                                 \
            --set       battery           update_freq=100                               \
                                          script="$PLUGIN_DIR/$BATT_SCRIPT"             \
                                          icon.font="$BATT_ICON_SIZE"                   \
                                          label.font="$FONT:Bold Italic:14.0"           \
                                          background.height=$SEGMENT_HEIGHT             \
                                          label.padding_right=0                         \
            --subscribe battery           system_woke                                   \
            --subscribe battery           space_change                                  \
            --subscribe system.yabai_float front_app_switched window_focus mouse.clicked\
                                                                                        \
            --add       bracket            system                                       \
                                           system.label                                 \
                                           battery                                      \
                                           system.caffeinate                            \
                                           system.yabai_float                           \
                                                                                        \
            --set       system             background.drawing=on
