#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Medium' '-Soft'; do
            if [[ "$color" == '' ]]; then
                case "$theme" in
                    '')
                        theme_color='#3a94c5'
                        ;;
                    -Blue)
                        theme_color='#3a94c5'
                        ;;
                    -Green)
                        theme_color='#8da101'
                        ;;
                    -Grey)
                        theme_color='#56635f'
                        ;;
                    -Orange)
                        theme_color='#f57d26'
                        ;;
                    -Pink)
                        theme_color='#b16286'
                        ;;
                    -Purple)
                        theme_color='#df69ba'
                        ;;
                    -Red)
                        theme_color='#f85552'
                        ;;
                    -Teal)
                        theme_color='#35a77c'
                        ;;
                    -Yellow)
                        theme_color='#dfa000'
                        ;;
                esac

                if [[ "$type" == '-Medium' ]]; then
                    background_color='#fffbef'

                    case "$theme" in
                        '')
                            theme_color='#3a94c5'
                            ;;
                        -Blue)
                            theme_color='#3a94c5'
                            ;;
                        -Green)
                            theme_color='#8da101'
                            ;;
                        -Grey)
                            theme_color='#56635f'
                            ;;
                        -Orange)
                            theme_color='#f57d26'
                            ;;
                        -Pink)
                            theme_color='#b16286'
                            ;;
                        -Purple)
                            theme_color='#df69ba'
                            ;;
                        -Red)
                            theme_color='#f85552'
                            ;;
                        -Teal)
                            theme_color='#35a77c'
                            ;;
                        -Yellow)
                            theme_color='#dfa000'
                            ;;
                    esac
                fi

                if [[ "$type" == '-Soft' ]]; then
                    background_color='#fffbef'

                    case "$theme" in
                        '')
                            theme_color='#3a94c5'
                            ;;
                        -Blue)
                            theme_color='#3a94c5'
                            ;;
                        -Green)
                            theme_color='#8da101'
                            ;;
                        -Grey)
                            theme_color='#56635f'
                            ;;
                        -Orange)
                            theme_color='#f57d26'
                            ;;
                        -Pink)
                            theme_color='#b16286'
                            ;;
                        -Purple)
                            theme_color='#df69ba'
                            ;;
                        -Red)
                            theme_color='#f85552'
                            ;;
                        -Teal)
                            theme_color='#35a77c'
                            ;;
                        -Yellow)
                            theme_color='#dfa000'
                            ;;
                    esac
                fi
            else
                case "$theme" in
                    '')
                        theme_color='#7fbbb3'
                        ;;
                    -Blue)
                        theme_color='#7fbbb3'
                        ;;
                    -Green)
                        theme_color='#a7c080'
                        ;;
                    -Grey)
                        theme_color='#b9c0ab'
                        ;;
                    -Orange)
                        theme_color='#e69875'
                        ;;
                    -Pink)
                        theme_color='#d3869b'
                        ;;
                    -Purple)
                        theme_color='#d699b6'
                        ;;
                    -Red)
                        theme_color='#e67e80'
                        ;;
                    -Teal)
                        theme_color='#83c092'
                        ;;
                    -Yellow)
                        theme_color='#dbbc7f'
                        ;;
                esac

                if [[ "$type" == '-Medium' ]]; then
                    background_color='#2d353b'

                    case "$theme" in
                        '')
                            theme_color='#7fbbb3'
                            ;;
                        -Blue)
                            theme_color='#7fbbb3'
                            ;;
                        -Green)
                            theme_color='#a7c080'
                            ;;
                        -Grey)
                            theme_color='#b9c0ab'
                            ;;
                        -Orange)
                            theme_color='#e69875'
                            ;;
                        -Pink)
                            theme_color='#d3869b'
                            ;;
                        -Purple)
                            theme_color='#d699b6'
                            ;;
                        -Red)
                            theme_color='#e67e80'
                            ;;
                        -Teal)
                            theme_color='#83c092'
                            ;;
                        -Yellow)
                            theme_color='#dbbc7f'
                            ;;
                    esac
                fi

                if [[ "$type" == '-Soft' ]]; then
                    background_color='#333c43'

                    case "$theme" in
                        '')
                            theme_color='#7fbbb3'
                            ;;
                        -Blue)
                            theme_color='#7fbbb3'
                            ;;
                        -Green)
                            theme_color='#a7c080'
                            ;;
                        -Grey)
                            theme_color='#b9c0ab'
                            ;;
                        -Orange)
                            theme_color='#e69875'
                            ;;
                        -Pink)
                            theme_color='#d3869b'
                            ;;
                        -Purple)
                            theme_color='#d699b6'
                            ;;
                        -Red)
                            theme_color='#e67e80'
                            ;;
                        -Teal)
                            theme_color='#83c092'
                            ;;
                        -Yellow)
                            theme_color='#dbbc7f'
                            ;;
                    esac
                fi
            fi

            if [[ "$type" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
                # cp -r "assets-common${color}.svg" "assets-common${color}${type}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#3a94c5/${theme_color}/g" "assets${theme}${color}${type}.svg"
                    # sed -i "s/#fffbef/${background_color}/g" "assets-common${color}${type}.svg"
                else
                    sed -i "s/#7fbbb3/${theme_color}/g" "assets${theme}${color}${type}.svg"
                    # sed -i "s/#272e33/${background_color}/g" "assets-common${color}${type}.svg"
                fi
            elif [[ "$theme" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#3a94c5/${theme_color}/g" "assets${theme}${color}.svg"
                else
                    sed -i "s/#7fbbb3/${theme_color}/g" "assets${theme}${color}.svg"
                fi
            fi

        done
    done
done

echo -e "DONE!"
