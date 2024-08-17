{ inputs, pkgs, ... }:

{

  imports = [
    ./hy3.nix
    ./binds.nix
    ./rules.nix
    ./hyprpaper.nix
    ./hyprlock.nix
    ./hypridle.nix
    ./waybar.nix
  ];

  home.packages = with pkgs; [ hyprshot hyprpaper ];

  stylix.targets.hyprland.enable = false;
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    # package =
    #   inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;

    systemd = {
      enable = true;
      variables = [ "--all" ];
    };

    settings = {
      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };
      decoration = {
        rounding = 0;
        blur = {
          enabled = false;
          xray = true;
        };
      };
      monitor = "eDP-1,1920x1200,0x0,1.25";
      "$mod" = "SUPER";
      "$term" = "kitty";
      "$browser" = "chromium";
      "$bar" = "waybar";
      "$fileManager" = "dolphin";
      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "$term"
        "$browser"
        "telegram-desktop"
      ];
      xwayland = { force_zero_scaling = true; };
      general = {
        layout = "hy3";
        gaps_in = 0;
        gaps_out = 0;
        allow_tearing = false;
        border_size = 1;
      };
      cursor = { no_warps = true; };
      input = {
        kb_layout = "us,ru";
        kb_options = "caps:swapescape,grp:alt_space_toggle";
        repeat_rate = 45;
        repeat_delay = 175;
        follow_mouse = 1;
        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

        touchpad = { natural_scroll = false; };
      };
      gestures = { workspace_swipe = true; };
      animations = { enabled = false; };
      device = {
        name = "tpps/2-elan-trackpoint";
        sensitivity = -0.5;
      };

    };
  };

}
