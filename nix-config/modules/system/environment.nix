{ pkgs, ... }: {
  environment = {
    sessionVariables = {
      LIBVA_DRIVER_NAME = "iHD";
      EDITOR = "nvim";
    };

    pathsToLink =
      [ "/share/xdg-desktop-portal" "/share/applications" "/share/zsh" ];
    systemPackages = with pkgs; [ helix git tmux docker seatd libseat ];
  };
}
