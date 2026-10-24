function fish_greeting
    pfetch
end

set -gx EDITOR nvim
set -gx SUDO_EDITOR nvim

if status is-interactive
    if set -q KITTY_WINDOW_ID
        #  starship init fish | source
    end
end
