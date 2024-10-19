function abbrs_startup
abbr -a -- bac 'bacon -j clippy'
abbr -a -- blctl bluetoothctl
abbr -a -- c cargo
abbr -a -- ca 'cargo add'
abbr -a -- cb 'cargo build'
abbr -a -- cbr 'cargo build --release'
abbr -a -- cc 'cargo check'
abbr -a -- ccl 'cargo clippy'
abbr -a -- cf 'cargo fmt'
abbr -a -- cl clear
abbr -a -- clf 'clear; fastfetch'
abbr -a -- clg 'clear; fish_greeting'
abbr -a -- cln 'clear; neofetch'
abbr -a -- clt 'clear; tofu'
abbr -a -- clte 'clear; tofu show -o done-last earliest priority'
abbr -a -- cpustat 'auto-cpufreq --stats'
abbr -a -- cr 'cargo run'
abbr -a -- crr 'cargo run --release'
abbr -a -- ct 'cargo nextest run'
abbr -a -- ctn 'cargo nextest run --no-default-features'
abbr -a -- cto 'cargo test -- --show-output'
abbr -a -- gp 'git push'
abbr -a -- l 'exa --long --group --icons'
abbr -a -- la 'exa --long --all --group'
abbr -a -- ll 'exa --long --all --group --icons'
abbr -a -- ln 'ln -s'
abbr -a -- ls 'exa --group-directories-first -F --icons'
abbr -a -- lt 'exa --long --all --sort=modified --group --icons'
abbr -a -- mkdir 'mkdir -p'
abbr -a -- n nvim
abbr -a -- nc ncmpcpp
abbr -a -- nf 'nvim (fzf)'
abbr -a -- pac yay
abbr -a -- restart reboot
abbr -a -- sleep 'systemctl suspend'
abbr -a -- sysdis 'systemctl disable'
abbr -a -- sysen 'systemctl enable'
abbr -a -- sysre 'systemctl restart'
abbr -a -- systat 'systemctl status'
abbr -a -- systl systemctl
abbr -a -- systop 'systemctl stop'
abbr -a -- systrt 'systemctl start'
abbr -a -- t tofu
abbr -a -- tree 'exa -TF'
abbr -a -- tse 'tofu show -o done-last earliest priority'
abbr -a -- update yay
abbr -a -- xbu 'x build -i --jobs 8'
abbr -a -- xch 'x check -i --jobs 8 compiler'
abbr -a -- xtestui 'x test src/test/ui -i --jobs 8'
abbr -a -- xtestuilint 'x test src/test/ui/lint -i --jobs 8'
abbr -a -- xti 'x tidy'
abbr -a -- xtidy 'x test tidy'
abbr -a -- xwayland 'env -u WAYLAND_DISPLAY -u QT_QPA_PLATFORM'
abbr -a -- yeet 'yay -Rsn'
abbr -a -- yoink 'yay -S'
abbr -a -- za zathura
abbr -a -- zf 'zathura (fzf) &'
end
