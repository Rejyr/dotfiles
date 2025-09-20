function abbrs_startup
abbr -a -- bac 'bacon -j clippy'
abbr -a -- blctl bluetoothctl
abbr -a -- c cargo
abbr -a -- cl clear
abbr -a -- clf 'clear; fastfetch'
abbr -a -- clg 'clear; fish_greeting'
abbr -a -- cpustat 'auto-cpufreq --stats'
abbr -a -- gp 'git push'
abbr -a -- l 'eza -lg'
abbr -a -- la 'eza -lga'
abbr -a -- ll 'eza -lga'
abbr -a -- ln 'ln -s'
abbr -a -- ls 'eza -F'
abbr -a -- lt 'eza -lga --sort=modified'
abbr -a -- mkdir 'mkdir -p'
abbr -a -- n nvim
abbr -a -- nf 'nvim (fzf)'
abbr -a -- pac yay
abbr -a -- rc rmpc
abbr -a -- restart reboot
abbr -a -- suspend 'systemctl suspend'
abbr -a -- sysdis 'systemctl disable'
abbr -a -- sysen 'systemctl enable'
abbr -a -- sysre 'systemctl restart'
abbr -a -- systat 'systemctl status'
abbr -a -- systl systemctl
abbr -a -- systop 'systemctl stop'
abbr -a -- systrt 'systemctl start'
abbr -a -- tree 'eza -TF'
abbr -a -- update yay
abbr -a -- yeet 'yay -Rsn'
abbr -a -- yoink 'yay -S'
abbr -a -- za zathura
abbr -a -- zf 'zathura (fzf) &'
abbr -a --position anywhere -- --help '--help | bat -plhelp'
abbr -a --position anywhere -- -h '-h | bat -plhelp'
end
