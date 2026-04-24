{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.networking =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    {
      networking.wireless.iwd.enable = true;

      environment.systemPackages = with pkgs; [
        impala
      ];
    };
}
