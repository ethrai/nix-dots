{ pkgs, config, ... }: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings.main = {
      layer = "top";
      position = "bottom";
      height = 24;

      fixed-center = false;

      modules-right = [
        "hyprland/language"
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
        font-family: "${config.stylix.fonts.sansSerif.name} ${config.stylix.fonts.emoji.name}";
        font-size: 18px;
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
        color: #${base06};
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
      {
        border: none;
        padding: 0px 4px;
        margin: 0px 2px;
        background: #${base00};
        font-size: 18px;
        color: #${base06};
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
