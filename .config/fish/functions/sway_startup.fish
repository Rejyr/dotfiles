function sway_startup
    if test -z $DISPLAY
        # and test (tty) = "/dev/pts/0" # zellij/tmux messes with tty, now is pts. TODO: maybe fix this?
        and test (tty) = "/dev/tty1"
        exec dbus-run-session sway --unsupported-gpu --verbose
    end
end
