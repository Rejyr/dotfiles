{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.toplap = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      inputs.nvf.nixosModules.default # TODO: do this conditionally
      self.nixosModules.toplapModule
      self.nixosModules.myHomeManager
    ];
  };
}
