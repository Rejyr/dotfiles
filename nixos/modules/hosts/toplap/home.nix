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
    imports = [
      self.homeModules.git
      self.homeModules.mpd
    ];

    home.packages = with pkgs; [
      bat
      bluez
      btop
      cliphist
      dust
      eza
      fd
      fzf
      gammastep
      imv
      jq
      mpv
      noto-fonts
      playerctl
      ripgrep
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
    ];

    services.polkit-gnome.enable = true;
    programs.librewolf.enable = true;

    home.stateVersion = "24.11";
  };
}
