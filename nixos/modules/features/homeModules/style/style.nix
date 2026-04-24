{
  self,
  inputs,
  ...
}:
{
  flake.homeModules.style =
    { pkgs, ... }:
    {
      gtk = {
        enable = true;
        font = {
          name = "IosevkaNF";
          package = pkgs.nerd-fonts.iosevka;
        };
        colorScheme = "dark";
        theme.name = "Everforest-BL-LB-Dark-Medium";
        gtk4.theme = null;
      };
      home.file.".themes".source = ./.themes;
      xdg.configFile."gtk-4.0" = {
        source = ./.themes/Everforest-BL-LB-Dark-Medium/gtk-4.0;
        recursive = true;
      };

      # qt = {
      #   enable = true;
      #   style.name = "kvantum";
      #   platformTheme.name = "gtk3";
      # };
      # home.packages = with pkgs; [
      #   kdePackages.qtstyleplugin-kvantum
      # ];
      # xdg.configFile."Kvantum".source = ./Kvantum;
    };
}
