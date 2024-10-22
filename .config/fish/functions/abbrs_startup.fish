function abbrs_startup
abbr -a -- bac 'bacon -j clippy'
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
abbr -a -- reboot 'sudo reboot'
abbr -a -- tree 'exa -TF'
abbr -a -- update yay
abbr -a -- xbu 'x build -i --jobs 8'
abbr -a -- xch 'x check -i --jobs 8 compiler'
abbr -a -- xtestui 'x test src/test/ui -i --jobs 8'
abbr -a -- xtestuilint 'x test src/test/ui/lint -i --jobs 8'
abbr -a -- xti 'x tidy'
abbr -a -- xtidy 'x test tidy'
abbr -a -- yeet 'sudo xbps-remove -R'
abbr -a -- yoink 'sudo xbps-install'
abbr -a -- za zathura
abbr -a -- zf 'zathura (fzf) &'
end
