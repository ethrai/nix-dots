{ pkgs, ... }: {
  imports = [ ./mimeapps.nix ];
  home.packages = with pkgs; [ xdg-utils ];
  xdg = {
    enable = true;
    portal = {
      extraPortals =
        [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-hyprland ];
      enable = true;
      config = { preferred = { default = [ "gtk" "hyprland" ]; }; };
    };
  };
}
