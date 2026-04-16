{ config, pkgs, ... }:

{
  home.username = "rejyr";
  home.homeDirectory = "/home/rejyr";

  programs.git = {
    enable = true;
    signing.format = null;
  };
  programs.gh.enable = true;

  home.stateVersion = "24.11";
}
