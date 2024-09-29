if status --is-interactive
    # Commands to run in interactive sessions can go here
	if ! set -q ZELLIJ
		and test ! (tty) = "/dev/tty1"
                attach_zellij
	end
end

zoxide init fish | source

prompt_startup
sway_startup
abbrs_startup
everforest
zellij_tab_name_update
