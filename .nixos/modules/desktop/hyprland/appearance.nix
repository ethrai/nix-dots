{ config, ... }: {

  stylix.targets.hyprland.enable = false;
  wayland.windowManager.hyprland = {
    settings = with config.lib.stylix.colors; {
      decoration = {
        rounding = 0;
        blur = {
          enabled = false;
          size = 18;
          xray = true;
          popups = true;
          passes = 5;
          new_optimizations = true;
        };
      };
      general = {
        layout = "hy3";
        gaps_in = 0;
        gaps_out = 0;
        allow_tearing = false;
        border_size = 0;
        "col.active_border" = "rgb(${base06}) rgb(${base0D}) 45deg";
        "col.inactive_border" = "rgb(${base01}";
      };
      animations = {
        enabled = true;

        bezier = [
          "fluent_decel, 0, 0.2, 0.4, 1"
          "easeOutCirc, 0, 0.55, 0.45, 1"
          "easeOutCubic, 0.33, 1, 0.68, 1"
          "easeinoutsine, 0.37, 0, 0.63, 1"
          "easeOutBack,0.34,1.56,0.64,1"
          "easeInBack,0.36,0,0.66,-0.56"
          "easeInCubic,0.32,0,0.67,0"
          "easeInOutCubic,0.65,0,0.35,1"
        ];

        animation = [
          "windowsIn,1,3,easeOutBack,popin"
          "windowsOut,1,3,easeInBack,popin"
          "fadeIn,0"
          "fadeOut,1,3,easeInCubic"
          "workspaces,1,2,easeInOutCubic,slide"
        ];
      };
    };
  };
}
