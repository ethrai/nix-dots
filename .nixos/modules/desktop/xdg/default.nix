{ pkgs, ... }: {
  imports = [ ./mimeapps.nix ];
  home.packages = with pkgs; [ xdg-utils ];
  xdg = {
    enable = true;
    portal = {
      enable = true;
      extraPortals =
        [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-hyprland ];
      config = { preferred = { default = [ "hyprland" ]; }; };
    };
  };
}
