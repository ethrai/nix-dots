{ inputs, pkgs, config, ... }:

{

  imports = [
    ./appearance.nix
    ./binds.nix
    ./rules.nix
    ./hy3.nix
    ./hyprpaper.nix
    ./hyprlock.nix
    ./hypridle.nix
  ];

  home.packages = with pkgs; [ hyprshot hyprpaper ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    # package =
    #   inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;

    systemd = {
      enable = true;
      variables = [ "--all" ];
    };

    settings = with config.lib.stylix.colors; {
      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };
      monitor = "eDP-1,1920x1200,0x0,1.25";
      "$mod" = "SUPER";
      "$term" = "kitty";
      "$browser" = "chromium";
      "$bar" = "waybar";
      "$fileManager" = "nautilus";
      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "$browser"
        "telegram-desktop"
        "$fileManager"
        "spotify"
        "obsidian"
        "$term"
      ];
      xwayland = { force_zero_scaling = true; };
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
      device = {
        name = "tpps/2-elan-trackpoint";
        sensitivity = -0.5;
      };

    };
  };

}
