{ config, pkgs, lib, inputs, ... }:

{
  imports = [ ./modules/desktop ./modules/apps ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  home = {
    username = "sergio";
    homeDirectory = "/home/sergio";
  };

  home.packages = with pkgs; [ docker ];

  home.stateVersion = "24.05";

  home.sessionVariables = {
    EDITOR = "nvim";
    NIXOS_OZONE_WL = "1";
    # QT_QPA_PLATFONM_THEME = "qt5ct";
    # QT_QPA_PLATFORM = "wayland";
    # QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
    # QT_AUTO_SCREEN_SCALE_FACTOR = 1;

    GOROOT = "${pkgs.go}/share/go";

  };

}
