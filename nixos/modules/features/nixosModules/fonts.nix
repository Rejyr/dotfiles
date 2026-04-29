{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.fonts =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    {
      fonts.packages = with pkgs; [
        nerd-fonts.iosevka
        sarasa-gothic
        noto-fonts-color-emoji
      ];
    };
}
