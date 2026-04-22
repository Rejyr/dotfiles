{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.toplapModule = {pkgs, ...}: let
    selfpkgs = self.packages."${pkgs.stdenv.hostPlatform.system}";
  in {
    imports = [
      self.nixosModules.toplapHardware
      self.nixosModules.nvf
      self.nixosModules.fish
    ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "toplap";
    networking.wireless.iwd.enable = true;

    time.timeZone = "America/New_York";
    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };

    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };

    users.users.rejyr = {
      isNormalUser = true;
      description = "Jerry Wang";
      extraGroups = ["networkmanager" "wheel"];
      packages = with pkgs; [];
    };

    nixpkgs.config.allowUnfree = true;

    powerManagement.enable = true;
    services.tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        START_CHARGE_THRESH_BAT0 = 40;
        STOP_CHARGE_THRESH_BAT0 = 80;
      };
    };

    hardware.bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

    programs.niri = {
      enable = true;
      package = selfpkgs.niri;
    };
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };

    environment.systemPackages = with pkgs; [
      selfpkgs.fastfetch
      selfpkgs.foot
      selfpkgs.fuzzel
      selfpkgs.mako
      selfpkgs.swaylock
      selfpkgs.waybar
      selfpkgs.zathura
      selfpkgs.zellij
      bash
      neovim
      python3
      uv
      bluetui
      impala
      wiremix
    ];

    fonts.packages = with pkgs; [
      nerd-fonts.iosevka
    ];

    nix.gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    nix.settings.experimental-features = ["nix-command" "flakes"];
    system.stateVersion = "24.11";
    home-manager.users.rejyr = self.homeModules.rejyrModule;
  };
}
