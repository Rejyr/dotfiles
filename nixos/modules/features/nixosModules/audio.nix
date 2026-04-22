{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.audio = {
    config,
    pkgs,
    lib,
    ...
  }: {
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };

    environment.systemPackages = with pkgs; [
      wiremix
    ];
  };
}
