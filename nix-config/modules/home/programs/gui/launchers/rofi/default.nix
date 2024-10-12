{ pkgs, config, lib, ... }: {
  stylix.targets.rofi.enable = false;
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "Inter 13";
    location = "center";
    theme = "catppuccin";


    plugins = with pkgs; [ rofi-calc rofi-emoji rofi-top ];
  };

  xdg.configFile = {
    "rofi" = {
      source = lib.cleanSourceWith { src = lib.cleanSource ./config/.; };

      recursive = true;
    };
  };
}
