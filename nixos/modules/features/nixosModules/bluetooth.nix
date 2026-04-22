{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.bluetooth = {
    config,
    pkgs,
    lib,
    ...
  }: {
    hardware.bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

    environment.systemPackages = with pkgs; [
      bluetui
    ];
  };
}
