{ config, lib, pkgs, inputs, ... }: {
  wayland.windowManager.hyprland = {
    plugins = [ pkgs.hyprlandPlugins.hy3 ];

    settings = {
      plugin = {
        hy3 = {
          no_gaps_when_only = 1; # default: 0

          node_collapse_policy = 2; # default: 2

          # offset from group split direction when only one window is in a group
          group_inset = 10; # default: 10

          # if a tab group will automatically be created for the first window spawned in a workspace
          tab_first_window = true;

          # tab group settings
          tabs = with config.lib.stylix.colors; {
            # height of the tab bar
            height = 15; # default: 15

            # padding between the tab bar and its focused node
            padding = 0; # default: 5

            rounding = 0;

            render_text = true; # default: true

            # height of the window title
            text_height = 13; # default: 8

            text_font = "${config.stylix.fonts.monospace.name}";
            text_center = true;

            # left padding of the window title
            text_padding = 3; # default: 3

            "col.active" = "rgb(${base01})"; # default: 0xff32b4ff
            "col.urgent" = "rgb(${base08})"; # default: 0xff32b4ff
            "col.inactive" = "rgb(${base02})"; # default: 0xff32b4ff

            "col.text.active" = "rgb(${base05})"; # default: 0xff32b4ff
            "col.text.urgent" = "rgb(${base01})"; # default: 0xff32b4ff
            "col.text.inactive" = "rgb(${base05})"; # default: 0xff32b4ff

          };

          # autotiling settings
          autotile = {
            # enable autotile
            enable = true; # default: false

            # if a window would be squished smaller than this width, a vertical split will be created
            # -1 = never automatically split vertically
            # 0 = always automatically split vertically
            # <number> = pixel height to split at
            trigger_width = 800; # default: 0

            # if a window would be squished smaller than this height, a horizontal split will be created
            # -1 = never automatically split horizontally
            # 0 = always automatically split horizontally
            # <number> = pixel height to split at
            trigger_height = 500; # default: 0

            # a space or comma separated list of workspace ids where autotile should be enabled
            # it's possible to create an exception rule by prefixing the definition with "not:"
            # workspaces = 1,2 # autotiling will only be enabled on workspaces 1 and 2
            # workspaces = not:1,2 # autotiling will be enabled on all workspaces except 1 and 2
            workspaces = "all"; # default: all
          };

        };

      };

    };
  };
}
