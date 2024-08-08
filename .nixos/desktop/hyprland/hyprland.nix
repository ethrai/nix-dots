{
  inputs,
  pkgs,
  config,
  lib,
  ...
}:

{

  imports = [
    ./hy3.nix
    ./binds.nix
    ./rules.nix
    ./hyprpaper.nix
  ];

  stylix.targets.hyprland.enable = true;
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    systemd = {
      enable = true;
      variables = [ "--all" ];
    };

    settings = {
      monitor = "eDP-1,1920x1200,0x0,1.25";
      "$mod" = "SUPER";
      "$term" = "kitty";
      "$browser" = "chromium";
      "$bar" = "waybar";
      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "$term"
        "$browser"
        "$bar &"
      ];
      xwayland = {
        force_zero_scaling = true;
      };
      general = {
        layout = "hy3";
        gaps_in = 0;
        gaps_out = 0;
        allow_tearing = false;
        border_size = 1;
      };
      input = {
        kb_layout = "us,ru";
        kb_options = "caps:swapescape,grp:alt_space_toggle";
        repeat_rate = 45;
        repeat_delay = 175;
        follow_mouse = 0;
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

    };
    extraConfig = ''
      xwayland {
          force_zero_scaling = true
      }
    '';
  };

}
