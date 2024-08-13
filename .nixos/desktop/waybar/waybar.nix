{ config, pkgs, ... }:

{
  stylix.targets.waybar.enable = false;
  programs.waybar = with config.lib.stylix.colors; {
    enable = true;
    package = (pkgs.waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    }));
    systemd.enable = true;
    style = ''
      * {
        border: none;
        border-radius: 0;
        min-height: 0;
        font-family: 'FiraCode Nerd Font';
        font-size: 18px;
      }

      window#waybar {
        background-color: #${base00};
        color: #${base06};
        transition-property: background-color;
        transition-duration: 0.5s;
      }

      window#waybar.hidden {
        opacity: 0.5;
      }

      .modules-right {
        background-color: #${base00};
      }

      #workspaces {
        font-size: 18px;
        background-color: #${base00};
      }

      #workspaces button {
        border-radius: 0px;
        margin: 0px 2px;
        padding: 0px 2px;
        background-color: @transparent;
        color: #${base06};
        min-width: 20px;
      }

      #workspaces button.active {
        color: #${base00};
        background-color: #${base06};
      }

      #workspaces button:hover {
        /* box-shadow: inherit; */
        /* text-shadow: inherit; */
        background-color: #${base0A};
      }

      #workspaces button.urgent {
        background-color: #${base0F};
      }

      #memory,
      #battery,
      #backlight,
      #pulseaudio,
      #network,
      #clock,
      #idle_inhibitor,
      #cpu,
      #custom-mediaplayer,
      #temperature,
      #language,
      #tray {
        padding: 0px 4px;
        margin: 0px 2px;
        border-radius: 0px;
        color: #${base06};
      }


      #tray {
        padding: 0 2px;
        border-right: 1px solid @border;
      }

      #tooltip {
        border-radius: 2px;
        padding: 15px;
        background-color: #131822;
      }

      #tooltip label {
        padding: 5px;
        background-color: #131822;
      }


    '';
  };

}
