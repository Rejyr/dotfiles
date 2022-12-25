if status --is-interactive
    # Commands to run in interactive sessions can go here
	if ! set -q ZELLIJ
		and test ! (tty) = "/dev/tty1"
		exec zellij
	end
end

# initialize zoxide
zoxide init fish | source

sway_startup
everforest

# setup bobthefish prompt
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked yes
set -g theme_display_git_dirty yes
set -g theme_display_nvm yes
set -g theme_display_virtualenv yes
set -g theme_color_scheme terminal
set -g theme_date_format "+%a %d %b %Y | %H:%M:%S"
