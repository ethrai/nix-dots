{ lib, config, ... }: {
  stylix.targets.waybar.enable = false;
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings.main = {
      layer = "top";
      position = "bottom";
      fixed-center = false;
      modules-left = [ "hyprland/workspaces" ];
      modules-right = [
        "hyprland/language"
        "pulseaudio"
        "memory"
        "cpu"
        "battery"
        "clock"
        "clock#date"
      ];
      "hyprland/workspaces" = {
        persistent-workspaces = {
          "1" = [ ];
          "2" = [ ];
          "3" = [ ];
          "4" = [ ];
          "5" = [ ];
          "6" = [ ];
          "7" = [ ];
          "8" = [ ];
          "9" = [ ];
        };
      };

      "hyprland/language" = {
        "format" = "{}";
        "format-en" = "US";
        "format-ru" = "RU";
      };

      pulseaudio = {
        format = "AUDIO:{volume}%";
        format-bluetooth = "AUDIO(BL):{volume}%";
        format-muted = "AUDIO(MUTED)";
      };

      memory = {
        interval = 1;
        format = "MEM:{:02}%";
      };

      cpu = {
        interval = 2;
        tooltip = false;
        format = "CPU:{usage:02}%";
      };

      battery = {
        format = "BAT:{capacity}%";
        format-full = "BAT(F)";
        format-charging = "BAT(C):{capacity}%";
      };

      clock = {
        interval = 5;
        format = "{:%H:%M}";
      };

      "clock#date" = {
        interval = 5;
        format = "{:%d/%m/%Y}";
      };
    };
    style = with config.lib.stylix.colors; ''
      * {
        font-family: "";
        font-size: 14px;
        min-height: 0;
        border: none;
        margin: 0;
        padding: 0;
      }

      button label {
        all: unset;
      }

      window#waybar {
        background: #${base01};
        color: #${base05};
        border: none;
        margin: 0 5px;
        border-radius: 4px;
        padding: 0;
      }

      #backlight,
      #pulseaudio,
      #memory,
      #cpu,
      #network,
      #battery,
      #clock,
      #clock-date,
      #custom-notifications,
      #language
      {
        border: none;
        padding: 0px 2px;
        margin: 0px 4px;
        background: #${base01};
        font-size: 20px;
        color: #${base05};
      }

      #pulseaudio.muted
      {
          background: #${base01};
          color: #${base08};
      }

      #workspaces {
        font-size: 14px;
        border: none;
        padding: 0;
        margin: 0;
      }

      #workspaces button {
        padding: 0 2px;
        border: 1px solid #${base04};
        border-radius: 4px;
        margin: 0 2px 0 0;
        background: #${base01};
        color: #${base04};
        min-width: 20px;
      }

      #workspaces button.active {
        color: #${base05};
        border: 1px solid #${base05};
        background: #${base01};
      }
      #workspaces button.urgent {
        color: #${base08};
        border: 2px solid #${base08};
        background: #${base01};
      }
    '';
  };
}
