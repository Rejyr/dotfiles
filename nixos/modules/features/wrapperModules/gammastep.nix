{
  self,
  inputs,
  ...
}:
{
  flake.wrapperModules.gammastep =
    {
      pkgs,
      lib,
      ...
    }:
    {
      package = pkgs.gammastep;
      flags = {
        "-t" = "6500:3500";
      };
    };

  perSystem =
    {
      pkgs,
      lib,
      self',
      ...
    }:
    {
      packages.gammastep = inputs.wrapper-modules.lib.wrapPackage {
        inherit pkgs;
        imports = [ self.wrapperModules.gammastep ];
      };
    };
}
