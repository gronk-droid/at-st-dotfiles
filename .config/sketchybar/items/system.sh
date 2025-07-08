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
BATT_ICON_SIZE="$FONT:Regular:42.0"



sketchybar  --add       item              battery right                                 \
            --set       battery           update_freq=100                               \
                                          script="$PLUGIN_DIR/$BATT_SCRIPT"             \
                                          icon.font="$BATT_ICON_SIZE"                   \
                                          icon.y_offset=1.5                             \
                                          icon.padding_right=2                          \
                                          label.font="$FONT:Bold Italic:14.0"           \
                                          padding_right=10                              \
                                          padding_left=10                               \
            --subscribe battery           system_woke                                   \
            --subscribe battery           space_change                                  \
                                                                                        \
            --add       bracket            system                                       \
                                           battery                                      \
                                                                                        \
            --set       system             background.drawing=on
