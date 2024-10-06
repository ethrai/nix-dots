{ config, pkgs, lib, inputs, ... }: {
  stylix.targets.hyprpaper.enable = lib.mkForce false;
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      ipc = "on";
      splash = false;
      preload = [ "/home/sergio/.dots/wallpaper.png" ];
      wallpaper = [ "eDP-1,/home/sergio/.dots/wallpaper.png" ];
    };
  };
}
