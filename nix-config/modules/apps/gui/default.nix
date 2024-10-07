{
  imports = [
    ./alacritty.nix
    ./chromium.nix
    ./firefox.nix
    ./imv.nix
    ./mpv.nix
    ./kitty.nix
    ./packages.nix
    ./zathura.nix
  ];

  services = {
    blueman-applet.enable = true;
    network-manager-applet.enable = true;
  };
}
