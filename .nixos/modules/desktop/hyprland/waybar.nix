{ config, ... }: {
  stylix.targets.waybar.enable = false;
  programs.waybar = {
    settings.main = {
      modules-left = [ "hyprland/workspaces" ];

      modules-right = [ "hyprland/language" ];

      "hyprland/language" = {
        "format" = "{}";
        "format-en" = " US";
        "format-ru" = " RU";
        "on-click" = "hyprctl switchxkblayout evision-usb-device next";
      };

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
          "10" = [ ];
        };

        enable-bar-scroll = true;
        disable-scroll-wraparound = true;
      };
    };

    style = with config.lib.stylix.colors; ''


      #workspaces {
        font-size: 20px;
        border: none;
        padding: 0;
        margin: 0;
      }
      #workspaces button {
        padding: 0 2px;
        border: 1px solid #${base03};
        border-radius: 0px;
        margin: 0 2px 0 0;
        background: #${base00};
        color: #${base03};
        min-width: 20px;
      }

      #workspaces button.active {
        color: #${base05};
        border: 1px solid #${base05};
        background: #${base00};
      }
      #workspaces button.urgent {
        color: #${base05};
        border: 2px solid #${base08};
        background: #${base00};
      }
    '';
  };
}
