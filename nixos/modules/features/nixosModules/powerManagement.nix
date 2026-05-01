{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.powerManagement =
    {
      config,
      pkgs,
      lib,
      ...
    }:
    let
      cfg = config.myFeatures.powerManagement;
    in
    {
      options.myFeatures.powerManagement = {
        enable = lib.mkEnableOption "Power Management";
      };

      config = lib.mkIf cfg.enable {
        powerManagement.enable = true;
        services.tlp = {
          enable = true;
          settings = {
            CPU_SCALING_GOVERNOR_ON_AC = "performance";
            CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
            CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
            CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

            START_CHARGE_THRESH_BAT0 = 40;
            STOP_CHARGE_THRESH_BAT0 = 80;
          };
        };
      };
    };
}
