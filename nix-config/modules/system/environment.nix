{ pkgs, ... }: {
  environment = {
    sessionVariables = {
      LIBVA_DRIVER_NAME = "iHD";
      EDITOR = "nvim";
      NIXOS_OZONE_WL = "1";
    };

    pathsToLink =
      [ "/share/xdg-desktop-portal" "/share/applications" "/share/zsh" ];
    systemPackages = with pkgs; [ helix git tmux docker seatd libseat ];
  };
}
