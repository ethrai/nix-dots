{ config, lib, pkgs, inputs, ... }: {
  wayland.windowManager.hyprland = {
    plugins = [ pkgs.hyprlandPlugins.hy3 ];

    settings = {
      plugin = {
        hy3 = {
          no_gaps_when_only = 1; # default: 0
          node_collapse_policy = 2; # default: 2
          group_inset = 10; # default: 10
          tab_first_window = true;

          tabs = with config.lib.stylix.colors; {
            height = 16;
            padding = 0;
            rounding = 0;
            render_text = true; # default: true

            # height of the window title
            text_height = 10; # default: 8

            text_font = "${config.stylix.fonts.serif.name}";
            text_center = true;

            "col.active" = "rgb(${base01})";
            "col.urgent" = "rgb(${base08})";
            "col.inactive" = "rgb(${base02})";
            "col.text.active" = "rgb(${base07})";
            "col.text.urgent" = "rgb(${base02})";
            "col.text.inactive" = "rgb(${base06})";
          };
          autotile.enable = false; # default: false
        };
      };
    };
  };
}
