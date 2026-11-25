function fish_prompt
    set -l last_status $status

    set -l mode simple

    # set_color brblack
    # printf '[%s] ' $USER
    set_color brwhite
    printf '[%s]' (prompt_pwd)
    set_color cyan
    printf ' > '
    set_color normal
end
