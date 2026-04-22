{
  self,
  inputs,
  ...
}: {
  flake.wrapperModules.zellij = {
    pkgs,
    lib,
    ...
  }: {
    package = pkgs.zellij;
    flags = {
      "--config" = ./config.kdl;
    };
  };

  perSystem = {
    pkgs,
    lib,
    self',
    ...
  }: {
    packages.zellij = inputs.wrapper-modules.lib.wrapPackage {
      inherit pkgs;
      imports = [self.wrapperModules.zellij];
    };
  };
}
