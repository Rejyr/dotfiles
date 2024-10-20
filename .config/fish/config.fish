sway_startup

zoxide init fish | source

prompt_startup
abbrs_startup
everforest
zellij_tab_name_update

set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
