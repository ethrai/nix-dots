{ pkgs, config, ... }: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings.main = {
      layer = "top";
      position = "bottom";
      height = 28;

      fixed-center = false;

      modules-right = [
        "backlight"
        "pulseaudio"
        "memory"
        "cpu"
        "network"
        "battery"
        "clock"
        "clock#date"
        "custom/notifications"
        "tray"
      ];
    } // (import ./modules pkgs);

    style = with config.lib.stylix.colors; ''
      * {
        font-family: "${config.stylix.fonts.monospace.name}";
        font-size: 20px;
        min-height: 0;
        border: none;
        margin: 0;
        padding: 0;
      }

      button label {
        all: unset;
      }

      window#waybar {
        background: #${base00};
        color: #${base05};
        border: none;
        margin: 0;
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
      #custom-notifications
      #tray
      {
        border: none;
        padding: 0px 2px;
        margin: 0px 4px;
        background: #${base00};
        font-size: 20px;
        color: #${base05};
      }

      #pulseaudio.muted,
      #custom-notifications.off
      {
          background: #${base00};
          color: #${base08};
      }
    '';
  };
}
