{
  self,
  inputs,
  ...
}: {
  flake.wrapperModules.swaylock = {
    pkgs,
    lib,
    ...
  }: {
    config = {
      settings = {
        ignore-empty-password = true;
        show-failed-attempts = true;
        daemonize = true;
        # TODO: change to file store
        image = "~/dotfiles/wallpapers/wallpaper.jpg";
        scaling = "fill";
        indicator-caps-lock = true;
        font = "IosevkaNF";

        indicator-radius = 240;
        indicator-thickness = 20;

        key-hl-color = "a7c080b0";
        bs-hl-color = "e67e80b0";

        separator-color = "2d353bd9";

        inside-color = "00000000";
        inside-clear-color = "dbbc7f00";
        inside-caps-lock-color = "7fbbb300";
        inside-ver-color = "d3c6aa00";
        inside-wrong-color = "e67e8000";

        ring-color = "2d353bd9";
        ring-clear-color = "2d353bd9";
        ring-caps-lock-color = "2d353bd9";
        ring-ver-color = "2d353bd9";
        ring-wrong-color = "2d353bd9";

        line-color = "2d353bd9";
        line-clear-color = "dbbc7fb0";
        line-caps-lock-color = "7fbbb3b0";
        line-ver-color = "d3c6aab0";
        line-wrong-color = "e67e80b0";

        text-clear-color = "dbbc7f00";
        text-ver-color = "d3c6aa00";
        text-wrong-color = "e67e8000";

        caps-lock-key-hl-color = "dbbc7f";
        caps-lock-bs-hl-color = "e67e80";
        text-caps-lock-color = "7fbbb3";
      };
    };
  };

  perSystem = {
    pkgs,
    lib,
    self',
    ...
  }: {
    packages.swaylock = inputs.wrapper-modules.wrappers.swaylock.wrap {
      inherit pkgs;
      imports = [self.wrapperModules.swaylock];
    };
  };
}
