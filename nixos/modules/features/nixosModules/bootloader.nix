{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.bootloader =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    let
      cfg = config.my_bootloader_config;
    in
    {
      # TODO: proper naming/path
      options.my_bootloader_config = {
        extraEntries = lib.mkOption {
          description = "boot.loader.limine.extraEntries";
          default = "";
          type = lib.types.lines;
          example = lib.literalExpresssion ''
            /Windows
                protocol: efi
                path: boot():/EFI/Microsoft/Boot/bootmgfw.efi
          '';
        };
        style.wallpapers = lib.mkOption {
          description = "boot.loader.limine.style.wallpapers";
          default = [ ../../../../wallpapers/shenandoah.png ];
          type = lib.types.listOf lib.types.path;
        };
      };

      config = {
        boot.loader.limine = {
          enable = true;
          extraEntries = cfg.extraEntries;
          style = {
            backdrop = "2D353B";
            wallpapers = cfg.style.wallpapers;
            wallpaperStyle = "centered";
            interface = {
              brandingColor = 2;
            };
            graphicalTerminal = {
              palette = "232A2E;E67E80;A7C080;E69875;7FBBB3;D699B6;83C092;7A8478";
              foreground = "D3C6AA";
              background = "402D353B";
              brightPalette = "233A2E;E67E80;A7C080;E69875;7FBBB3;D699B6;83C092;7A8478";
              brightForeground = "D3C6AA";
              brightBackground = "402D353B";
            };
          };
        };
        boot.loader.efi.canTouchEfiVariables = true;
      };
    };
}
