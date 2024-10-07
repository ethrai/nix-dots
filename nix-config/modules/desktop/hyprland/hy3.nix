{ config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    plugins = [ pkgs.hyprlandPlugins.hy3 ];

    settings = {
      plugin = {
        hy3 = with config.lib.stylix.colors; {
          no_gaps_when_only = 1;
          node_collapse_policy = 2;
          group_inset = 10;
          tab_first_window = true;

          tabs = {
            height = 8;
            padding = 0;
            rounding = 8;
            render_text = false; # default: true

            "col.active" = "rgb(${base0B})";
            "col.inactive" = "rgb(${base01})";
            "col.urgent" = "rgb(${base08})";
          };
        };
      };
    };
  };
}
