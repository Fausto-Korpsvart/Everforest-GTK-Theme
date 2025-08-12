make_gtkrc() {
    local dest="${1}"
    local name="${2}"
    local theme="${3}"
    local color="${4}"
    local size="${5}"
    local ctype="${6}"
    local window="${7}"

    [[ "${color}" == '-Light' ]] && local ELSE_LIGHT="${color}"
    [[ "${color}" == '-Dark' ]] && local ELSE_DARK="${color}"

    local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
    local THEME_DIR="${1}/${2}${3}${4}${5}${6}"

    if [[ "${color}" != '-Dark' ]]; then
        case "$theme" in
            '')
                theme_color='#3a94c5'
                ;;
            -Green)
                theme_color='#8da101'
                ;;
            -Grey)
                theme_color='#414b50'
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

        if [[ "$ctype" == '-Medium' ]]; then
            case "$theme" in
                '')
                    theme_color='#3a94c5'
                    ;;
                -Green)
                    theme_color='#8da101'
                    ;;
                -Grey)
                    theme_color='#414b50'
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

        if [[ "$ctype" == '-Soft' ]]; then
            case "$theme" in
                '')
                    theme_color='#3a94c5'
                    ;;
                -Green)
                    theme_color='#8da101'
                    ;;
                -Grey)
                    theme_color='#414b50'
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
        # Light themes
        case "$theme" in
            '')
                theme_color='#7fbbb3'
                ;;
            -Green)
                theme_color='#e0dcc7'
                ;;
            -Grey)
                theme_color='#a7c080'
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

        if [[ "$ctype" == '-Medium' ]]; then
            case "$theme" in
                '')
                    theme_color='#7fbbb3'
                    ;;
                -Green)
                    theme_color='#e0dcc7'
                    ;;
                -Grey)
                    theme_color='#a7c080'
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

        if [[ "$ctype" == '-Soft' ]]; then
            case "$theme" in
                '')
                    theme_color='#7fbbb3'
                    ;;
                -Green)
                    theme_color='#e0dcc7'
                    ;;
                -Grey)
                    theme_color='#a7c080'
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

    if [[ "$blackness" == 'true' ]]; then
        case "$ctype" in
            '')
                background_light='#fffbef'
                background_dark='#1e2326'
                background_darker='#020203'
                background_alt='#0f1115'
                titlebar_light='#e0dcc7'
                titlebar_dark='#1e2326'
                ;;
            -Medium)
                background_light='#fffbef'
                background_dark='#1e2326'
                background_darker='#020203'
                background_alt='#0f1115'
                titlebar_light='#e0dcc7'
                titlebar_dark='#1e2326'
                ;;
            -Soft)
                background_light='#fffbef'
                background_dark='#1e2326'
                background_darker='#020203'
                background_alt='#0f1115'
                titlebar_light='#e0dcc7'
                titlebar_dark='#1e2326'
                ;;
        esac
    else
        case "$ctype" in
            '')
                background_light='#fffbef'
                background_dark='#272e33'
                background_darker='#374145'
                background_alt='#414b50'
                titlebar_light='#e8e5d5'
                titlebar_dark='#272e33'
                ;;
            -Medium)
                background_light='#fffbef'
                background_dark='#2d353b'
                background_darker='#272e33'
                background_alt='#374145'
                titlebar_light='#e8e5d5'
                titlebar_dark='#2d353b'
                ;;
            -Soft)
                background_light='#fffbef'
                background_dark='#333c43'
                background_darker='#2d353b'
                background_alt='#414b50'
                titlebar_light='#e8e5d5'
                titlebar_dark='#333c43'
                ;;
        esac
    fi

    mkdir -p "${THEME_DIR}/gtk-2.0"

    cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK:-}-default" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#fffbef/${background_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#272e33/${background_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#414b50/${background_alt}/g" "${THEME_DIR}/gtk-2.0/gtkrc"

    if [[ "${color}" == '-Dark' ]]; then
        sed -i "s/#7fbbb3/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#272e33/${background_darker}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#374145/${titlebar_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    else
        sed -i "s/#3a94c5/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#e0dcc7/${titlebar_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    fi
}
