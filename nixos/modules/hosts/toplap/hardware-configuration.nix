{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.toplapHardware =
    {
      config,
      lib,
      pkgs,
      modulesPath,
      ...
    }:
    {

      imports = [
        (modulesPath + "/installer/scan/not-detected.nix")
      ];

      boot.initrd.availableKernelModules = [
        "nvme"
        "xhci_pci"
        "usb_storage"
        "sd_mod"
        "rtsx_pci_sdmmc"
      ];
      boot.initrd.kernelModules = [ ];
      boot.kernelModules = [ "kvm-amd" ];
      boot.extraModulePackages = [ ];

      fileSystems."/" = {
        device = "/dev/disk/by-uuid/4f28b788-fbd7-409b-b607-f5e84aed063f";
        fsType = "btrfs";
        options = [
          "subvol=root"
          "noatime"
          "compress=zstd"
        ];
      };

      fileSystems."/home" = {
        device = "/dev/disk/by-uuid/4f28b788-fbd7-409b-b607-f5e84aed063f";
        fsType = "btrfs";
        options = [
          "subvol=home"
          "noatime"
          "compress=zstd"
        ];
      };

      fileSystems."/nix" = {
        device = "/dev/disk/by-uuid/4f28b788-fbd7-409b-b607-f5e84aed063f";
        fsType = "btrfs";
        options = [
          "subvol=nix"
          "noatime"
          "compress=zstd"
        ];
      };

      fileSystems."/var/log" = {
        device = "/dev/disk/by-uuid/4f28b788-fbd7-409b-b607-f5e84aed063f";
        fsType = "btrfs";
        options = [
          "subvol=log"
          "noatime"
          "compress=zstd"
        ];
        neededForBoot = true;
      };

      fileSystems."/persist" = {
        device = "/dev/disk/by-uuid/4f28b788-fbd7-409b-b607-f5e84aed063f";
        fsType = "btrfs";
        options = [
          "subvol=persist"
          "noatime"
          "compress=zstd"
        ];
        neededForBoot = true;
      };

      fileSystems."/swap" = {
        device = "/dev/disk/by-uuid/4f28b788-fbd7-409b-b607-f5e84aed063f";
        fsType = "btrfs";
        options = [
          "subvol=swap"
          "noatime"
        ];
      };

      swapDevices = [
        {
          device = "/swap/swapfile";
          size = 16 * 1024;
        }
      ];

      nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
      hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    };
}
