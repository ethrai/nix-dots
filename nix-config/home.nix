{ config, pkgs, lib, inputs, ... }:

{
  imports = [ ./modules/home ];

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
    GOROOT = "${pkgs.go}/share/go";
  };
}
