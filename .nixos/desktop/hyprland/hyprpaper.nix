{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
{
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
  };
}
