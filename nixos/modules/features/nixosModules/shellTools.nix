{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.shellTools =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    {
      environment.systemPackages = with pkgs; [
        bat
        btop
        dust
        eza
        fd
        fzf
        jq
        ripgrep
        rsync
        unrar
        unzip
        yazi

        # TODO: make media specific config for shellTools
        imv
        mpv
        playerctl
      ];
    };
}
