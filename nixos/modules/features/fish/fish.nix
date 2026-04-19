{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.fish = {
    config,
    pkgs,
    lib,
    ...
  }: {
    environment.systemPackages = with pkgs; [
      fzf
      fishPlugins.fzf-fish
      zoxide
    ];
    programs.fish = {
      enable = true;
      promptInit = ''
        source ${./functions/fish_greeting.fish}
        source ${./functions/fish_prompt.fish}
        source ${./functions/fish_right_prompt.fish}
      '';
      interactiveShellInit = ''
        source ${./conf.d/fish_theme.fish}
        source ${./functions/copypdfpng.fish}
        source ${./functions/mkcd.fish}
        zoxide init fish | source
      '';
      shellAbbrs = {
        bac = "bacon -j clippy";
        blctl = "bluetoothctl";
        c = "cargo";
        cl = "clear";
        clf = "clear; fastfetch";
        clg = "clear; fish_greeting";
        cpustat = "auto-cpufreq --stats";
        gp = "git push";
        l = "eza -lg";
        la = "eza -lga";
        ll = "eza -lga";
        ln = "ln -s";
        ls = "eza -F";
        lt = "eza -lga --sort=modified";
        mkdir = "mkdir -p";
        n = "nvim";
        nf = "nvim (fzf)";
        rc = "rmpc";
        restart = "reboot";
        suspend = "systemctl suspend";
        sysdis = "systemctl disable";
        sysen = "systemctl enable";
        sysre = "systemctl restart";
        systat = "systemctl status";
        systl = "systemctl";
        systop = "systemctl stop";
        systrt = "systemctl start";
        tree = "eza -TF";
        update = "sudo xbps-install -Su";
        yeet = "sudo xbps-remove -R";
        yoink = "sudo xbps-install";
        xbq = "xbps-query -Rs";
        za = "zathura";
        zf = "zathura (fzf) &";
      };
    };
  };
}
