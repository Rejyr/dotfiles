{
  self,
  inputs,
  ...
}: {
  flake.homeModules.mpd = {pkgs, ...}: {
    home.packages = with pkgs; [
      mpc
      rmpc
    ];

    services.mpd = {
      enable = true;
      musicDirectory = "~/Music";
      extraConfig = ''
        auto_update "yes"
        audio_output {
          type "pipewire"
          name "My PipeWire Output"
        }
        audio_output {
          type "fifo"
          name "my_fifo"
          path "/tmp/mpd.fifo"
          format "44100:16:2"
        }
      '';
    };
    services.mpdris2-rs.enable = true;
    xdg.configFile.rmpc.source = ./rmpc;
  };
}
