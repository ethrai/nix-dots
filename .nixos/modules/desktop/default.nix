{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wl-clipboard
    cliphist
    playerctl
    pamixer
    brightnessctl
    pavucontrol

    seahorse
  ];
  imports = [
    ./hyprland
    ./waybar
    ./xdg
    ./gtk.nix
    ./cliphist.nix
    ./fonts.nix
    ./gammastep.nix
    ./gnome-keyring.nix
    ./mako.nix
    ./rofi.nix
    ./xremap.nix
  ];
}
