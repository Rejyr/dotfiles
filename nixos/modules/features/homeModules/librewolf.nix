{
  self,
  inputs,
  ...
}:
{
  flake.homeModules.librewolf =
    { pkgs, ... }:
    {
      programs.librewolf = {
        enable = true;
        settings = {
          # enable userChome.css
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;

          # ignore annoying default security
          "privacy.clearOnShutdown.cache" = false;
          "privacy.clearOnShutdown.cookies" = false;
          "privacy.clearOnShutdown.history" = false;
          "privacy.clearOnShutdown.downloads" = false;
          "privacy.clearOnShutdown_v2.cache" = false;
          "privacy.clearOnShutdown_v2.cookiesAndStorage" = false;
          "privacy.resistFingerprinting" = false;

          # tracking protection
          "privacy.trackingprotection.enabled" = true;

          # enable firefox accounts
          "identity.fxaccounts.enabled" = true;

          # enable webgl
          "webgl.disabled" = false;

          # annoying something i forgor
          "ui.key.menuAccessKeyFocuses" = false;

          # /tmp download dir
          "browser.download.dir" = "/tmp";
          # most recent Ctrl+Tab
          "browser.ctrlTab.sortByRecentlyUsed" = true;
          # stricter dns
          "browser.contentblocking.category" = "strict";

          # everforest colors
          "browser.anchor_color" = "#7fbbb3";
          "browser.display.background_color" = "#FFFFFF";
          "browser.display.foreground_color" = "#2d353b";
          "browser.visited_color" = "#a7c080";

          # iosevka font
          "font.name.monospace.x-western" = "IosevkaNF";
          "font.name.sans-serif.x-western" = "IosevkaNF";
          "font.name.serif.x-western" = "IosevkaNF";
        };
      };
    };
}
