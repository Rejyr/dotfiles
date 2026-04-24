{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.clipboard =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    {
      environment.systemPackages = with pkgs; [
        cliphist
        wl-clipboard
      ];
    };
}
