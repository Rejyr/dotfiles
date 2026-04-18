{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.waybar = {
    pkgs,
    lib,
    ...
  }: {
    programs.waybar = {
      enable = true;
      package =
        self.packages.${pkgs.stdenv.hostPlatform.system}.myWaybar;
    };
  };

  perSystem = {
    pkgs,
    lib,
    self',
    ...
  }: {
    packages.myWaybar = inputs.wrapper-modules.wrappers.waybar.wrap {
      inherit pkgs;
      "style.css".path = ./style.css;
      settings = {
        layer = "top";
        position = "left";
        width = 40;
        margin-left = 0;
        margin-right = 0;
        margin-top = 0;
        margin-bottom = 0;
        spacing = 0;
        reload_style_on_change = true;
        on-sigusr1 = "toggle";
        on-sigusr2 = "reload";
        modules-left = [
          "custom/launcher"
          "clock"
          "niri/workspaces"
        ];
        modules-center = [
          "mpris"
        ];
        modules-right = [
          "tray"
          "group/jibblets"
          "custom/powermenu"
        ];
        "custom/launcher" = {
          format = " ";
          tooltip = false;
          on-click = "fuzzel";
        };
        clock = {
          format = "{:%H\n%M}";
          format-alt = "{:%m\n%d\n<b>—</b>\n%H\n%M}";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "month";
            mode-mon-col = 3;
            on-scroll = 1;
            format = {
              months = "<span color='#7fbbb3'><b>{}</b></span>";
              days = "<span color='#d3c6aa'><b>{}</b></span>";
              weekdays = "<span color='#dbbc7f'><b>{}</b></span>";
              today = "<span color='#a7c080'><b><u>{}</u></b></span>";
            };
          };
          actions = {
            on-click-right = "mode";
            on-scroll-up = "shift_up";
            on-scroll-down = "shift_down";
          };
        };
        "niri/workspaces" = {
          format = "{icon}";
          format-icons = {
            default = " ";
            active = " ";
          };
        };
        mpris = {
          rotate = 90;
          format = "{player_icon} {dynamic}";
          format-paused = "{status_icon} {dynamic}";
          dynamic-order = [
            "artist"
            "title"
          ];
          dynamic-len = 40;
          player-icons = {
            default = "▶ ";
            mpd = "󰝚 ";
          };
          status-icons = {
            paused = "⏸ ";
          };
          on-click-middle = "";
          on-click-right = "${./scripts/spawn_term.sh} mpris";
        };
        "niri/window" = {
          rotate = 90;
          format = "{app_id} - {title}";
        };
        tray = {
          icon-size = 14;
          spacing = 10;
        };
        "group/jibblets" = {
          orientation = "inherit";
          modules = [
            "backlight"
            "custom/clipboard"
            "custom/bluetooth"
            "wireplumber"
            "network"
            "cpu"
            "battery"
          ];
        };
        backlight = {
          format = "{icon}";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
          ];
        };
        "custom/clipboard" = {
          format = " ";
          tooltip = false;
          on-click = "${./scripts/clipboard_menu.sh}";
        };
        "custom/bluetooth" = {
          format = "{}";
          exec = "${./scripts/bluetooth_status.sh}";
          interval = 5;
          tooltip = false;
          on-click = "${./scripts/spawn_term.sh} custom-bluetooth";
        };
        wireplumber = {
          scroll-step = 5;
          format = "{icon}";
          tooltip-format = "vol: {volume}%";
          format-bluetooth = "{icon} ";
          format-bluetooth-muted = " {icon} ";
          format-muted = " ";
          format-icons = {
            headphone = " ";
            hands-free = " ";
            headset = " ";
            phone = " ";
            portable = " ";
            car = " ";
            default = [
              ""
              ""
              ""
            ];
          };
          on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          on-click-right = "${./scripts/spawn_term.sh} wireplumber";
        };
        network = {
          format-wifi = "{icon}";
          format-ethernet = "󰈀 ";
          format-disconnected = "󰖪 ";
          tooltip-format = "{ipaddr}\n{essid} ({signalStrength}%)";
          on-click = "${./scripts/spawn_term.sh} network";
          format-icons = [
            "󰤯 "
            "󰤟 "
            "󰤢 "
            "󰤥 "
            "󰤨 "
          ];
        };
        cpu = {
          format = "{icon}";
          format-icons = [
            "🁣 "
            "🁤 "
            "🁥 "
            "🁦 "
            "🁧 "
            "🁨 "
            "🁩 "
            "🁰 "
            "🁷 "
            "🁾 "
            "🂅 "
            "🂌 "
            "🂓 "
            "🁢 "
          ];
          interval = 1;
          tooltip = false;
          on-click = "${./scripts/spawn_term.sh} cpu";
        };
        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon}";
          format-alt = "{icon}\n{capacity}%";
          format-charging = "{icon}󱐋";
          tooltip-format = "{power}W, {timeTo}";
          format-icons = [
            " "
            " "
            " "
            " "
            " "
          ];
        };
        "custom/powermenu" = {
          format = " ";
          tooltip = false;
          on-click = "${./scripts/powermenu.sh}";
        };
      };
    };
  };
}
