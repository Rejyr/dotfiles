{
  self,
  inputs,
  ...
}:
{
  flake.nixosConfigurations.toplap = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.toplapModule
      self.nixosModules.myHomeManager
    ];
  };

  flake.nixosModules.toplapModule =
    { pkgs, ... }:
    let
      selfpkgs = self.packages."${pkgs.stdenv.hostPlatform.system}";
    in
    {
      imports = [
        self.nixosModules.toplapHardware
        self.nixosModules.audio
        self.nixosModules.bluetooth
        self.nixosModules.clipboard
        self.nixosModules.fonts
        self.nixosModules.keyboard
        self.nixosModules.networking
        self.nixosModules.powerManagement
        self.nixosModules.shellTools
        self.nixosModules.tzLocale
      ];

      boot.loader.limine = {
        enable = true;
        extraEntries = ''
          /Windows
              protocol: efi
              path: boot():/EFI/Microsoft/Boot/bootmgfw.efi
        '';
        style = {
          backdrop = "2D353B";
          wallpapers = [ ../../../../wallpapers/shenandoah.png ];
          wallpaperStyle = "centered";
          interface = {
            brandingColor = 2;
          };
          graphicalTerminal = {
            palette = "232A2E;E67E80;A7C080;E69875;7FBBB3;D699B6;83C092;7A8478";
            foreground = "D3C6AA";
            background = "402D353B";
            brightPalette = "233A2E;E67E80;A7C080;E69875;7FBBB3;D699B6;83C092;7A8478";
            brightForeground = "D3C6AA";
            brightBackground = "402D353B";
          };
        };
      };
      boot.loader.efi.canTouchEfiVariables = true;

      networking.hostName = "toplap";

      users.users.rejyr = {
        isNormalUser = true;
        description = "Jerry Wang";
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
        packages = with pkgs; [ ];
      };

      nixpkgs.config.allowUnfree = true;

      programs.niri = {
        enable = true;
        package = selfpkgs.niri;
      };

      environment.systemPackages = with pkgs; [
        selfpkgs.fastfetch
        selfpkgs.foot
        selfpkgs.fuzzel
        selfpkgs.mako
        selfpkgs.neovim
        selfpkgs.nushell
        selfpkgs.swaylock
        selfpkgs.waybar
        selfpkgs.zathura
        selfpkgs.zellij
        bash
        nixfmt
        python3
        rustup
        uv
      ];

      nix.gc = {
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 7d";
      };

      nix.settings.experimental-features = [
        "nix-command"
        "flakes"
      ];
      system.stateVersion = "24.11";
      home-manager.users.rejyr = self.homeModules.rejyrModule;
    };
}
