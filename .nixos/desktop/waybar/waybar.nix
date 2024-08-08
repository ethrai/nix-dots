{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
let
  ofSym = config.lib.file.mkOutOfStoreSymlink;
  homeDir = config.home.homeDirectory;
in
{
  # stylix.targets.waybar.enable = false;
  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };

  # xdg.configFile = {
  #   "waybar/" = {
  #     source = "${config.home.homeDirectory}/.dots/.config/waybar";
  #     recursive = true;
  #   };
  # };
  home.file = {
    ".config/waybar/config.jsonc".source = ofSym "${homeDir}/.dots/.config/waybar/config.jsonc";
  };
}
