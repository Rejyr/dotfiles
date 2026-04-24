{
  self,
  inputs,
  ...
}:
{
  flake.wrapperModules.fuzzel =
    {
      pkgs,
      lib,
      ...
    }:
    {
      config = {
        settings = {
          main = {
            dpi-aware = "no";
            font = "IosevkaNF:size=24";
            line-height = 48;
            icon-theme = "Papirus-Dark";
            fields = "name,generic,comment,categories,filename,keywords";
            terminal = "alacritty -e";
            show-actions = "yes";
            exit-on-keyboard-focus-loss = "no";
            tabs = 4;
            prompt = " run: ";
            width = 40;
            lines = 5;
          };
          colors = {
            background = "2d353be0";
            text = "d3c6aad0";
            prompt = "d3c6aad0";
            placeholder = "d3c6aaa0";
            input = "d3c6aad0";
            match = "a7c080f0";
            selection = "a7c080a0";
            selection-text = "d3c6aaff";
            selection-match = "a7c080f0";
            border = "a7c080e0";
          };
          border = {
            radius = 0;
            width = 3;
          };
          dmenu = {
            exit-immediately-if-empty = "yes";
          };
        };
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
      packages.fuzzel = inputs.wrapper-modules.wrappers.fuzzel.wrap {
        inherit pkgs;
        imports = [ self.wrapperModules.fuzzel ];
      };
    };
}
