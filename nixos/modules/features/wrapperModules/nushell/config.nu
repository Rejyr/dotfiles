$env.config.show_banner = false
$env.config.table.mode = "psql"
$env.config.completions.algorithm = "fuzzy"
$env.VISUAL = "nvim"
$env.EDITOR = "nvim"

alias blctl = bluetoothctl
alias n = nvim
alias nf = nvim (fzf)
alias rc = rmpc
alias systl = systemctl
alias tree = eza -TF
alias za = zathura
alias zf = zathura (fzf) &

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
atuin init nu | save -f ($nu.data-dir | path join "vendor/autoload/atuin.nu")
zoxide init nushell | save -f ($nu.data-dir | path join "vendor/autoload/zoxide.nu")

fastfetch
