if test -z $DISPLAY
    and test (tty) = "/dev/tty1"
    systemctl start --user niri.service
end

zoxide init fish | source

abbrs_startup
everforest
