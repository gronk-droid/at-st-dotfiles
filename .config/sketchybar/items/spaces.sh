#!/bin/bash

sketchybar  --add       space               space_template left                 \
            --set       space_template      icon.highlight_color=0xff978C8C     \
                                            label.drawing=off                   \
                                            icon.font="$FONT:Regular:16.0"      \
                                            drawing=off                         \
                                            updates=on                          \
                                            associated_display=1                \
                                            script="$PLUGIN_DIR/space.sh"       \
                                            click_script="$SPACE_CLICK_SCRIPT"  \
                                                                                \
            --clone     one                 space_template                      \
            --set       one                 associated_space=1                  \
                                            icon=一                             \
                                            drawing=on                          \
                                                                                \
            --clone     two                 space_template                      \
            --set       two                 associated_space=2                  \
                                            icon=二                             \
                                            drawing=on                          \
                                                                                \
            --clone     three               space_template                      \
            --set       three               associated_space=3                  \
                                            icon=三                             \
                                            drawing=on                          \
                                                                                \
            --clone     four                space_template                      \
            --set       four                associated_space=4                  \
                                            icon=四                             \
                                            drawing=on                          \
                                                                                \
            --clone     five                space_template                      \
            --set       five                associated_space=5                  \
                                            icon=五                             \
                                            drawing=on                          \
                                                                                \
            --clone     six                 space_template                      \
            --set       six                 associated_space=6                  \
                                            icon=六                             \
                                            drawing=on                          \
                                                                                \
            --clone     seven               space_template                      \
            --set       seven               associated_space=7                  \
                                            icon=七                             \
                                            drawing=on                          \
                                                                                \
            --clone     eight               space_template                      \
            --set       eight               associated_space=8                  \
                                            icon=八                             \
                                            drawing=on                          \
                                                                                \
            --clone     nine                space_template                      \
            --set       nine                associated_space=9                  \
                                            icon=九                             \
                                            drawing=on                          \
                                                                                \
            --clone     ten                 space_template                      \
            --set       ten                 associated_space=10                 \
                                            icon=〇                             \
                                            drawing=on                          \
                                          