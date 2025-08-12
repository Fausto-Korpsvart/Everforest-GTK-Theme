#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for type in '' '-Medium' '-Soft'; do
        case "$theme" in
            '')
                theme_color_dark='#7fbbb3'
                theme_color_light='#3a94c5'
                ;;
            -Blue)
                theme_color_dark='#7fbbb3'
                theme_color_light='#3a94c5'
                ;;
            -Green)
                theme_color_dark='#a7c080'
                theme_color_light='#8da101'
                ;;
            -Grey)
                theme_color_dark='#b9c0ab'
                theme_color_light='#56635f'
                ;;
            -Orange)
                theme_color_dark='#e69875'
                theme_color_light='#f57d26'
                ;;
            -Pink)
                theme_color_dark='#d3869b'
                theme_color_light='#b16286'
                ;;
            -Purple)
                theme_color_dark='#d699b6'
                theme_color_light='#df69ba'
                ;;
            -Red)
                theme_color_dark='#e67e80'
                theme_color_light='#f85552'
                ;;
            -Teal)
                theme_color_dark='#83c092'
                theme_color_light='#35a77c'
                ;;
            -Yellow)
                theme_color_dark='#dbbc7f'
                theme_color_light='#dfa000'
                ;;
        esac

        if [[ "$type" == '-Medium' ]]; then
            background_light='#fffbef'
            background_dark='#2d353b'
            base_dark='#1e2326'
            surface_dark='#374145'

            case "$theme" in
                '')
                    theme_color_dark='#7fbbb3'
                    theme_color_light='#3a94c5'
                    ;;
                -Blue)
                    theme_color_dark='#7fbbb3'
                    theme_color_light='#3a94c5'
                    ;;
                -Green)
                    theme_color_dark='#a7c080'
                    theme_color_light='#8da101'
                    ;;
                -Grey)
                    theme_color_dark='#b9c0ab'
                    theme_color_light='#56635f'
                    ;;
                -Orange)
                    theme_color_dark='#e69875'
                    theme_color_light='#f57d26'
                    ;;
                -Pink)
                    theme_color_dark='#d3869b'
                    theme_color_light='#b16286'
                    ;;
                -Purple)
                    theme_color_dark='#d699b6'
                    theme_color_light='#df69ba'
                    ;;
                -Red)
                    theme_color_dark='#e67e80'
                    theme_color_light='#f85552'
                    ;;
                -Teal)
                    theme_color_dark='#83c092'
                    theme_color_light='#35a77c'
                    ;;
                -Yellow)
                    theme_color_dark='#dbbc7f'
                    theme_color_light='#dfa000'
                    ;;
            esac
        fi

        if [[ "$type" == '-Soft' ]]; then
            background_light='#fffbef'
            background_dark='#333c43'
            base_dark='#1e2326'
            surface_dark='#374145'

            case "$theme" in
                '')
                    theme_color_dark='#7fbbb3'
                    theme_color_light='#3a94c5'
                    ;;
                -Blue)
                    theme_color_dark='#7fbbb3'
                    theme_color_light='#3a94c5'
                    ;;
                -Green)
                    theme_color_dark='#a7c080'
                    theme_color_light='#8da101'
                    ;;
                -Grey)
                    theme_color_dark='#b9c0ab'
                    theme_color_light='#56635f'
                    ;;
                -Orange)
                    theme_color_dark='#e69875'
                    theme_color_light='#f57d26'
                    ;;
                -Pink)
                    theme_color_dark='#d3869b'
                    theme_color_light='#b16286'
                    ;;
                -Purple)
                    theme_color_dark='#d699b6'
                    theme_color_light='#df69ba'
                    ;;
                -Red)
                    theme_color_dark='#e67e80'
                    theme_color_light='#f85552'
                    ;;
                -Teal)
                    theme_color_dark='#83c092'
                    theme_color_light='#35a77c'
                    ;;
                -Yellow)
                    theme_color_dark='#dbbc7f'
                    theme_color_light='#dfa000'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            rm -rf "thumbnail${theme}${type}.svg"
            cp -rf "thumbnail.svg" "thumbnail${theme}${type}.svg"
            sed -i "s/#7fbbb3/${theme_color_dark}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/#3a94c5/${theme_color_light}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/#fffbef/${background_light}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/#272e33/${background_dark}/g" "thumbnail${theme}${type}.svg"
            sed -i "s/thumbnail/thumbnail${theme}${type}/g" "thumbnail${theme}${type}.svg"
        elif [[ "$theme" != '' ]]; then
            rm -rf "thumbnail${theme}.svg"
            cp -rf "thumbnail.svg" "thumbnail${theme}.svg"
            sed -i "s/#7fbbb3/${theme_color_dark}/g" "thumbnail${theme}.svg"
            sed -i "s/#3a94c5/${theme_color_light}/g" "thumbnail${theme}.svg"
            sed -i "s/thumbnail/thumbnail${theme}/g" "thumbnail${theme}.svg"
        fi
    done
done

echo -e "DONE!"
