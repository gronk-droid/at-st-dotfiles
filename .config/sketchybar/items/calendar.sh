#!/bin/bash

sketchybar  --clone     calendar.date       label_template                      \
            --set       calendar.date       update_freq=60                      \
                                            position=right                      \
                                            label=cal                           \
                                            drawing=on                          \
                                            background.padding_right=10         \
                                            background.padding_left=10          \
                                            script="$PLUGIN_DIR/date.sh"        \
                                                                                \
            --add       bracket             calendar                            \
                                            calendar.time                       \
                                            calendar.date                       \
                                                                                \
            --set       calendar            background.drawing=on

sketchybar  --add       item                time right                          \
            --set       time                update_freq=2                       \
                                            icon.drawing=off                    \
                                            position=right                      \
                                            script="$PLUGIN_DIR/time.sh"        \
            --set       time                background.drawing=on

