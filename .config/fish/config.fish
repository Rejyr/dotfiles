if test -z $DISPLAY
    and test (tty) = "/dev/tty1"
    niri-session
end

zoxide init fish | source

prompt_startup
abbrs_startup
everforest
