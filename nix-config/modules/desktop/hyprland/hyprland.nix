{ pkgs, ... }: {
  home.packages = with pkgs; [ hyprshot hyprpaper ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    systemd = {
      enable = true;
      variables = [ "--all" ];
    };

    settings = {
      debug = {
        disable_logs = true;
        enable_stdout_logs = false;
      };
      monitor = "eDP-1,1920x1200,0x0,1.25";
      "$mod" = "SUPER";
      "$term" = "foot";
      "$browser" = "firefox";
      "$bar" = "waybar";
      "$notes" = "obsidian";
      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "$term"
        "$browser"
        "telegram-desktop"
      ];
      xwayland = { force_zero_scaling = true; };
      cursor = { no_warps = true; };
      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";
        repeat_rate = 45;
        repeat_delay = 200;
        follow_mouse = 1;
        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
        touchpad = { natural_scroll = false; };
      };
      gestures = { workspace_swipe = false; };
      device = {
        name = "tpps/2-elan-trackpoint";
        sensitivity = -0.5;
      };
    };
  };
}
