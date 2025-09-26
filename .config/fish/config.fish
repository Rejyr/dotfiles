if test -z $DISPLAY
    and test (tty) = "/dev/tty1"
    systemctl start --user niri.service
end

zoxide init fish | source

setup_abbr
setup_everforest
