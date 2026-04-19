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
      fd
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
      zellij
    ];

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

    services.polkit-gnome.enable = true;
    programs.librewolf.enable = true;

    xdg.configFile.mpd.source = ../../../../.config/mpd;
    xdg.configFile.rmpc.source = ../../../../.config/rmpc;
    xdg.configFile.zellij.source = ../../../../.config/zellij;

    home.stateVersion = "24.11";
  };
}
