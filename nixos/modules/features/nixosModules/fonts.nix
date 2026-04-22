{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.fonts = {
    config,
    pkgs,
    lib,
    ...
  }: {
    fonts.packages = with pkgs; [
      nerd-fonts.iosevka
    ];
  };
}
