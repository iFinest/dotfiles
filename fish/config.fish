function fish_greeting
    pfetch
end
function fish_prompt
    printf '%s ' (prompt_pwd)
end

set -gx EDITOR nvim
set -gx SUDO_EDITOR nvim

starship init fish | source
