#!/bin/bash

sketchybar --add       space              space_template left                \
           --set       space_template     icon.highlight_color=0xffFF6188    \
                                          label.drawing=off                  \
                                          icon.font="$FONT:Regular:16.0"     \
                                          drawing=off                        \
                                          updates=on                         \
                                          associated_display=1               \
                                          script="$PLUGIN_DIR/space.sh"      \
                                          click_script="$SPACE_CLICK_SCRIPT" \
                                                                             \
           --clone     web                space_template                     \
           --set       web                associated_space=1                 \
                                          icon=一                            \
                                          icon.highlight_color=0xffFF6188    \
                                          drawing=on                         \
                                                                             \
           --clone     code               space_template                     \
           --set       code               associated_space=2                 \
                                          icon=二                            \
                                          icon.highlight_color=0xffFC9867    \
                                          drawing=on                         \
                                                                             \
           --clone     communication      space_template                     \
           --set       communication      associated_space=3                 \
                                          icon=三                            \
                                          icon.highlight_color=0xff87dcc6    \
                                          drawing=on                         \
                                                                             \
           --clone     background         space_template                     \
           --set       background         associated_space=4                 \
                                          icon=四                            \
                                          icon.highlight_color=0xffAB9DF2    \
                                          drawing=on                         \
                                                                             \
           --clone     extra              space_template                     \
           --set       extra              associated_space=5                 \
                                          icon=五                            \
                                          icon.highlight_color=0xffF78FB3    \
                                          drawing=on                         \
                                          