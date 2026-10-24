function fish_prompt
    set -l last_status $status
    set -l white f0f0f0
    set -l grayfg 404040
    set -l teal 4fd6ae
    set -l red ff6565
    set -l gray 505050

    if test "$TERM" = linux
        set_color $white
        printf '%s ' (date '+%H:%M:%S')

        if test $last_status -ne 0
            set_color $red
            printf '> %s ' $last_status
        end

        set_color $teal
        printf '> '

        set_color $white
        printf '%s ' (prompt_pwd)

        set_color normal
        printf '> '
    else
        set_color --background $gray $white
        printf ' %s ' (date '+%H:%M:%S')

        if test $last_status -ne 0
            set_color --background $red $gray
            printf ''

            set_color --background $red $white
            printf ' %s ' $last_status

            set_color --background $teal $red
            printf ''
        else
            set_color --background $teal $gray
            printf ''
        end

        set_color --background $teal $grayfg
        printf ' %s ' (prompt_pwd)

        set_color --background normal $teal
        printf ''

        set_color normal
        printf ' '
    end
end
