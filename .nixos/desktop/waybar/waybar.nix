{ pkgs, config, ... }:
let
  ofSym = config.lib.file.mkOutOfStoreSymlink;
  homeDir = config.home.homeDirectory;
in
{
  stylix.targets.waybar.enable = false;
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ''

    '';
  };

  home.file = {
    ".config/waybar/config.jsonc" = {
      enable = true;
      source = ofSym "${homeDir}/.dots/.conifg/waybar/config.jsonc";
    };
  };
}
