{
  self,
  inputs,
  ...
}:
{
  flake.wrapperModules.nushell =
    {
      pkgs,
      lib,
      ...
    }:
    {
      config = {
        extraPackages = with pkgs; [
          atuin
          starship
          zoxide
        ];
        env.STARSHIP_CONFIG = ./starship.toml;
        "config.nu".path = ./config.nu;
        "config.nu".content = "";
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
      packages.nushell = inputs.wrapper-modules.wrappers.nushell.wrap {
        inherit pkgs;
        imports = [ self.wrapperModules.nushell ];
      };
    };
}
