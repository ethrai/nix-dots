{ pkgs, config, ... }: {
  stylix.targets.waybar.enable = false;
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings.main = {
      layer = "top";
      position = "bottom";
      height = 24;

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
    } // (import ./modules pkgs);

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
