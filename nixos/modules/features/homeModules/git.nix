{
  self,
  inputs,
  ...
}:
{
  flake.homeModules.git =
    { pkgs, ... }:
    {
      programs.git = {
        enable = true;
        signing.format = null;
        settings = {
          user = {
            name = "Jerry Wang";
            email = "jerrylwang123@gmail.com";
            init.defaultBranch = "main";
          };
        };
      };
      programs.gh.enable = true;
    };
}
