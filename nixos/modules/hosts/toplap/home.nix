{
  self,
  inputs,
  ...
}: {
  flake.homeConfigurations.rejyr = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs {system = "x86_64-linux";};
    modules = [
      self.homeModules.rejyrModule
      {
        home.username = "rejyr";
        home.homeDirectory = "/home/rejyr";
      }
    ];
  };

  flake.homeModules.rejyrModule = {pkgs, ...}: {
    home.packages = with pkgs; [
      bat
      bluez
      btop
      dust
      eza
      fastfetch
      fd
      foot
      fzf
      gammastep
      imv
      jq
      mpc
      mpd
      mpv
      noto-fonts
      pipewire
      playerctl
      ripgrep
      rmpc
      rsync
      rustup
      swaybg
      swayidle
      unrar
      unzip
      uv
      wl-clipboard
      xdg-desktop-portal-gnome
      xwayland-satellite
      yazi
      zathura
      zellij
      zoxide
    ];

    programs.fish.enable = true;
    programs.gh.enable = true;
    programs.git = {
      enable = true;
      signing.format = null;
      settings = {
        user = {
          name = "Jerry Wang";
          email = "jerrylwang123@gmail.com";
          init.defaultBranch = "main";
        };
      };
    };

    programs.fuzzel.enable = true;
    programs.swaylock.enable = true;
    programs.waybar.enable = true;
    services.mako.enable = true;
    services.polkit-gnome.enable = true;
    programs.librewolf.enable = true;

    xdg.configFile.fish.source = ../../../../.config/fish;
    xdg.configFile.fastfetch.source = ../../../../.config/fastfetch;
    xdg.configFile.foot.source = ../../../../.config/foot;
    xdg.configFile.niri.source = ../../../../.config/niri;
    xdg.configFile.fuzzel.source = ../../../../.config/fuzzel;
    xdg.configFile.mako.source = ../../../../.config/mako;
    xdg.configFile.mpd.source = ../../../../.config/mpd;
    xdg.configFile.rmpc.source = ../../../../.config/rmpc;
    xdg.configFile.swaylock.source = ../../../../.config/swaylock;
    xdg.configFile.waybar.source = ../../../../.config/waybar;
    xdg.configFile.zellij.source = ../../../../.config/zellij;

    home.stateVersion = "24.11";
  };
}
