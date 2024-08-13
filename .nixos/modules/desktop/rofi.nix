{ pkgs, ... }: {
  home.packages = with pkgs; [ rofi-emoji-wayland ];

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}
