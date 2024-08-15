{ pkgs, ... }:

{
  home.packages = with pkgs; [ wl-clipboard hyprshot cliphist hyprpaper ];
  imports = [
    ./gtk
    ./hyprland
    ./waybar
    ./xdg
    ./cliphist.nix
    ./dunst.nix
    ./fonts.nix
    ./gammastep.nix
    ./gnome-keyring.nix
    ./rofi.nix
  ];
}
