{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.keyboard =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    let
      cfg = config.myFeatures.keyboard;
    in
    {
      options.myFeatures.keyboard = {
        enable = lib.mkEnableOption "Keyboard";
      };

      config = lib.mkIf cfg.enable {
        services.xserver.xkb = {
          layout = "us";
          variant = "";
        };
      };
    };
}
