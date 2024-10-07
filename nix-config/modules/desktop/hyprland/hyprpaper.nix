{ config, pkgs, lib, inputs, ... }: {
  stylix.targets.hyprpaper.enable = lib.mkForce false;
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      ipc = "on";
      splash = false;
      preload = [ "/home/sergio/dotfiles/wallpaper.png" ];
      wallpaper = [ "eDP-1,/home/sergio/dotfiles/wallpaper.png" ];
    };
  };
}
