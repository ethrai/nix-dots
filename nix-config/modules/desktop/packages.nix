{ pkgs, ... }: {
  home.packages = with pkgs; [
    wl-clipboard
    cliphist
    playerctl
    pamixer
    brightnessctl
    pavucontrol

    seahorse
  ];
}
