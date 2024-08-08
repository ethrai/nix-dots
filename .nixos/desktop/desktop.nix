{
  pkgs,
  lib,
  config,
  ...
}:
{
  imports = [
    ./hyprland/hyprland.nix
    ./waybar/waybar.nix
  ];
}
