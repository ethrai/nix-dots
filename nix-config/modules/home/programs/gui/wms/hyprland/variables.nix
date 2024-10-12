{ pkgs, config, lib, ... }: {
  home.packages = with pkgs; [ hyprshot hyprpaper ];

  wayland.windowManager.hyprland =

    let inherit (lib) getExe;
    in {
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

        "$term" = "${getExe pkgs.kitty}";
        "$browser" = "${getExe config.programs.firefox.package}";
        "$mail" = "${getExe pkgs.thunderbird}";
        "$editor" = "${getExe pkgs.neovim}";
        "$explorer" = "${getExe pkgs.nautilus}";
        "$music" = "${getExe pkgs.spotify}";
        "$launcher" = "anyrun";
        "$mod" = "SUPER";
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
