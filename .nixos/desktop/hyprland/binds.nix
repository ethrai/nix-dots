{ ... }: {
  wayland.windowManager.hyprland.settings.bind = [
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
  ];
}
