{ ... }: {
  wayland.windowManager.hyprland.settings = {

    bind = [

      "$mod, R, exec, rofi -show drun"
      "$mod, W, exec, rofi -show window"
      "$mod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"

      "$mod, R, exec, rofi -show drun"
      "$mod, W, exec, rofi -show window"
      "$mod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"

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

      # "$mod SHIFT, G, hy3:changegroup, untab"
      # "$mod, G, hy3:makegroup, tab, force_ephemeral"

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
      "$mod, F1, workspace, 11"
      "$mod, F2, workspace, 12"
      "$mod, F3, workspace, 13"
      "$mod, F4, workspace, 14"
      "$mod, F5, workspace, 15"
      "$mod, F6, workspace, 16"
      "$mod, F7, workspace, 17"
      "$mod, F8, workspace, 18"
      "$mod, F9, workspace, 19"
      "$mod, F10, workspace, 20"

      "$mod+SHIFT, 1, hy3:movetoworkspace, 01"
      "$mod+SHIFT, 2, hy3:movetoworkspace, 02"
      "$mod+SHIFT, 3, hy3:movetoworkspace, 03"
      "$mod+SHIFT, 4, hy3:movetoworkspace, 04"
      "$mod+SHIFT, 5, hy3:movetoworkspace, 05"
      "$mod+SHIFT, 6, hy3:movetoworkspace, 06"
      "$mod+SHIFT, 7, hy3:movetoworkspace, 07"
      "$mod+SHIFT, 8, hy3:movetoworkspace, 08"
      "$mod+SHIFT, 9, hy3:movetoworkspace, 09"
      "$mod+SHIFT, 0, hy3:movetoworkspace, 10"
      "$mod+SHIFT, F1, hy3:movetoworkspace, 11"
      "$mod+SHIFT, F2, hy3:movetoworkspace, 12"
      "$mod+SHIFT, F3, hy3:movetoworkspace, 13"
      "$mod+SHIFT, F4, hy3:movetoworkspace, 14"
      "$mod+SHIFT, F5, hy3:movetoworkspace, 15"
      "$mod+SHIFT, F6, hy3:movetoworkspace, 16"
      "$mod+SHIFT, F7, hy3:movetoworkspace, 17"
      "$mod+SHIFT, F8, hy3:movetoworkspace, 18"
      "$mod+SHIFT, F9, hy3:movetoworkspace, 19"
      "$mod+SHIFT, F10, hy3:movetoworkspace, 20"

      "$mod, S, togglespecialworkspace, magic"
      "$mod, S, movetoworkspace, +0"
      "$mod, S, togglespecialworkspace, magic"
      "$mod, S, movetoworkspace, special:magic"
      "$mod, S, togglespecialworkspace, magic"

      "$mod+CONTROL, 1, hy3:focustab, index, 01"
      "$mod+CONTROL, 2, hy3:focustab, index, 02"
      "$mod+CONTROL, 3, hy3:focustab, index, 03"
      "$mod+CONTROL, 4, hy3:focustab, index, 04"
      "$mod+CONTROL, 5, hy3:focustab, index, 05"
      "$mod+CONTROL, 6, hy3:focustab, index, 06"
      "$mod+CONTROL, 7, hy3:focustab, index, 07"
      "$mod+CONTROL, 8, hy3:focustab, index, 08"
      "$mod+CONTROL, 9, hy3:focustab, index, 09"
      "$mod+CONTROL, 0, hy3:focustab, index, 10"

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

      # Screenshot a window
      "$mod, PRINT, exec, hyprshot -m window"
      # Screenshot a monitor
      ", PRINT, exec, hyprshot -m output"
      # Screenshot a region
      "$mod SHIFT, PRINT, exec, hyprshot -m region"

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
  };
}
