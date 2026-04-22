{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.keyboard = {
    config,
    pkgs,
    lib,
    ...
  }: {
    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };
  };
}
