{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.geoclue2 =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    {
      location.provider = "geoclue2";

      services.geoclue2.enable = true;
    };
}
