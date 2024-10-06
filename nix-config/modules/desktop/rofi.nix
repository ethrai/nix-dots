{ pkgs, config, lib, ... }: {
  home.packages = with pkgs; [ rofi-emoji-wayland ];

  stylix.targets.rofi.enable = true;
  programs.rofi = {
    enable = true;

    font = lib.mkForce "${config.stylix.fonts.serif.name} 14";
    package = pkgs.rofi-wayland;
  };
}
