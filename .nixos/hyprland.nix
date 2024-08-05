{ inputs, pkgs, ... }:

{

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    systemd.enable = true;
    plugins = [ inputs.hy3.packages.x86_64-linux.hy3 ];

    settings = {
      monitor = "eDP-1,1920x1200,0x0,1.25";
      "$mod" = "SUPER";
      "$term" = "kitty";
      "$browser" = "chromium";
      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "$term"
        "$browser"
        "waybar &
"
      ];
      bind = [
        "$mod, R, exec, rofi -show drun"
        "$mod, W, exec, rofi -show window"
        "$mod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"

        "$mod, R, exec, rofi -show drun"
        "$mod, W, exec, rofi -show window"
        "$mod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
        "$mod, F2, exec, rofi -modi emoji -show emoji"
        "$mod, P, exec, rofi -show power-menu -modi power-menu:rofi-power-menu"

        "$mod, Q, exec, $term"
        "$mod, C, killactive"
        "$mod, M, exit"
        "$mod, E, exec, $fileManager"
        "$mod, T, togglefloating,"
        "$mod, F, fullscreen"

        "$mod, left, hy3:movefocus, l"
        "$mod, right, hy3:movefocus, r"
        "$mod, up, hy3:movefocus, u"
        "$mod, down, hy3:movefocus, d"

        "$mod SHIFT, G, hy3:changegroup, untab"
        "$mod, G, hy3:makegroup, tab, force_ephemeral"

        "$mod, h, hy3:movefocus, l"
        "$mod, l, hy3:movefocus, r"
        "$mod, k, hy3:movefocus, u"
        "$mod, j, hy3:movefocus, d"

        "$mod SHIFT, LEFT, hy3:movewindow, l"
        "$mod SHIFT, RIGHT, hy3:movewindow, r"
        "$mod SHIFT, UP, hy3:movewindow, u"
        "$mod SHIFT, DOWN, hy3:movewindow, d"
        "$mod SHIFT, H, hy3:movewindow, l"
        "$mod SHIFT, L, hy3:movewindow, r"
        "$mod SHIFT, K, hy3:movewindow, u"
        "$mod SHIFT, J, hy3:movewindow, d"

        "$mod, O, exec, hyprlock"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        "$mod, S, togglespecialworkspace, magic"
        "$mod, S, movetoworkspace, +0"
        "$mod, S, togglespecialworkspace, magic"
        "$mod, S, movetoworkspace, special:magic"
        "$mod, S, togglespecialworkspace, magic"

        "$mod, PRINT, exec, $screenshot -m window"
        "$mod, PRINT, exec, $screenshot -m region"

        ", XF86AudioRaiseVolume, exec, pamixer -i 5"
        ", XF86AudioLowerVolume, exec, pamixer -d 5"
        ", XF86AudioMicMute, exec, pamixer --default-source -t"
        ", XF86AudioMute, exec, pamixer -t"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPrev, exec, playerctl previous"
        ", XF86MonBrightnessUp, exec, brightnessctl s +5%"
        ", XF86MonBrightnessDown, exec, brightnessctl s 5%-"

        # Window resizing                           X  Y
        "$mod CTRL, left,  resizeactive, -60 0"
        "$mod CTRL, right, resizeactive,  60 0"
        "$mod CTRL, up,    resizeactive,  0 -60"
        "$mod CTRL, down,  resizeactive,  0  60"

        "$mod CTRL, h,  resizeactive, -60 0"
        "$mod CTRL, l, resizeactive,  60 0"
        "$mod CTRL, k,    resizeactive,  0 -60"
        "$mod CTRL, j,  resizeactive,  0  60"
        # Waybar
        "$mod SHIFT, I, exec, pkill -SIGUSR2 waybar"

        "$mod, I, exec, ../scripts/restart_hyprpaper.sh"
      ];
      general = {
        layout = "hy3";
        gaps_in = 0;
        gaps_out = 0;
        allow_tearing = false;
        border_size = 0;
      };

      input = {
        kb_layout = "us,ru";
        kb_options = "caps:swapescape,grp:alt_space_toggle";
        repeat_rate = 35;
        repeat_delay = 175;

        follow_mouse = 1;

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

        touchpad = {
          natural_scroll = false;
        };
      };
      gestures = {
        workspace_swipe = true;
      };
      animations = {
        enabled = false;
      };
      device = {
        name = "tpps/2-elan-trackpoint";
        sensitivity = -0.5;
      };
      plugin = {
        hy3 = {
          # disable gaps when only one window is onscreen
          # 0 - always show gaps
          # 1 - hide gaps with a single window onscreen
          # 2 - 1 but also show the window border
          no_gaps_when_only = 2; # default: 0

          # policy controlling what happens when a node is removed from a group,
          # leaving only a group
          # 0 = remove the nested group
          # 1 = keep the nested group
          # 2 = keep the nested group only if its parent is a tab group
          node_collapse_policy = 2; # default: 2

          # offset from group split direction when only one window is in a group
          group_inset = 10; # default: 10

          # if a tab group will automatically be created for the first window spawned in a workspace
          tab_first_window = true;

          # tab group settings
          tabs = {
            # height of the tab bar
            height = 14; # default: 15

            # padding between the tab bar and its focused node
            padding = 0; # default: 5

            # the tab bar should animate in/out from the top instead of below the window
            from_top = true; # default: false

            # rounding of tab bar corners
            rounding = 0; # default: 3

            # render the window title on the bar
            render_text = true; # default: true

            # center the window title
            text_center = true; # default: false

            # font to render the window title with
            text_font = "Fira Code"; # default: Sans

            # height of the window title
            text_height = 10; # default: 8

            # left padding of the window title
            text_padding = 0; # default: 3

            # active tab bar segment color
            # col.active = $base; # default: 0xff32b4ff

            # urgent tab bar segment color
            # col.urgent = $red # default: 0xffff4f4f

            # inactive tab bar segment color
            # col.inactive = $crust # default: 0x80808080

            # active tab bar text color
            # col.text.active = $text # default: 0xff000000

            # urgent tab bar text color
            # col.text.urgent = $text # default: 0xff000000

            # inactive tab bar text color
            # col.text.inactive = $surface2 # default: 0xff000000
          };

          # autotiling settings
          autotile = {
            # enable autotile
            enable = false; # default: false

            # make autotile-created groups ephemeral
            ephemeral_groups = true; # default: true

            # if a window would be squished smaller than this width, a vertical split will be created
            # -1 = never automatically split vertically
            # 0 = always automatically split vertically
            # <number> = pixel height to split at
            trigger_width = 0; # default: 0

            # if a window would be squished smaller than this height, a horizontal split will be created
            # -1 = never automatically split horizontally
            # 0 = always automatically split horizontally
            # <number> = pixel height to split at
            trigger_height = 0; # default: 0

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
