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
    let 
      diskDevice = "/dev/disk/by-uuid/98b17145-b120-45c8-82b8-22da49178e69";
    in
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
        device = diskDevice;
        fsType = "btrfs";
        options = [
          "subvol=root"
          "noatime"
          "compress=zstd"
        ];
      };

      fileSystems."/home" = {
        device = diskDevice;
        fsType = "btrfs";
        options = [
          "subvol=home"
          "noatime"
          "compress=zstd"
        ];
      };

      fileSystems."/nix" = {
        device = diskDevice;
        fsType = "btrfs";
        options = [
          "subvol=nix"
          "noatime"
          "compress=zstd"
        ];
      };

      fileSystems."/var/log" = {
        device = diskDevice;
        fsType = "btrfs";
        options = [
          "subvol=log"
          "noatime"
          "compress=zstd"
        ];
        neededForBoot = true;
      };

      fileSystems."/persistent" = {
        device = diskDevice;
        fsType = "btrfs";
        options = [
          "subvol=persistent"
          "noatime"
          "compress=zstd"
        ];
        neededForBoot = true;
      };

      fileSystems."/swap" = {
        device = diskDevice;
        fsType = "btrfs";
        options = [
          "subvol=swap"
          "noatime"
        ];
      };

      fileSystems."/boot" =
        { device = "/dev/disk/by-uuid/780D-32A9";
          fsType = "vfat";
          options = [ "fmask=0022" "dmask=0022" ];
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
