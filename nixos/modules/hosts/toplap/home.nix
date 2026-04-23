{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.myHomeManager = {pkgs, ...}: {
    imports = [
      inputs.home-manager.nixosModules.default
    ];

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
    };
  };

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

    services.polkit-gnome.enable = true;
    programs.librewolf.enable = true;

    home.stateVersion = "24.11";
  };
}
