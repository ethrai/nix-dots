{ pkgs, ... }:

{
  home.packages = with pkgs; [ wl-clipboard hyprshot cliphist ];
  imports = [
    ./gtk
    ./hyprland
    ./waybar
    ./xdg
    ./cliphist.nix
    ./dunst.nix
    ./gammastep.nix
    ./gnome-keyring.nix
    ./rofi.nix
  ];
}
