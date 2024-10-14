{ config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    plugins = [ pkgs.hyprlandPlugins.hy3 ];

    settings = {
      plugin = {
        hy3 = {
          no_gaps_when_only = 1;
          node_collapse_policy = 2;
          group_inset = 10;
          tab_first_window = true;

          tabs = {
            height = 15;
            padding = 0;
            rounding = 0;
            render_text = true; # default: true

            # center the window title
            text_center = true; # default: false

            # font to render the window title with
            text_font = "${config.stylix.fonts.sansSerif.name}"; # default: Sans

            # height of the window title
            text_height = 13; # default: 8

            "col.active" = "rgb(1f1f1f)";
            "col.text.active" = "rgb(f1f1f1)";
            "col.text.inactive" = "rgb(f1f1f1)";
            "col.inactive" = "rgb(4f4f4f)";
            "col.urgent" = "rgb(ffaaaa)";
          };
        };
      };
    };
  };
}
