{ pkgs, ... }: {
  environment.pathsToLink =
    [ "/share/xdg-desktop-portal" "/share/applications" "/share/zsh" ];

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "iHD";
    WLR_NO_HARDWARE_CURSORS = "1";
  };
  environment.systemPackages = with pkgs; [
    helix
    git
    tmux
    docker
    seatd
    libseat
  ];
}
