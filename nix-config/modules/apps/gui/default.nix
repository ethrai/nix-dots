{
  imports = [
    ./chromium.nix
    ./firefox.nix
    ./imv.nix
    ./mpv.nix
    ./kitty.nix
    ./foot.nix
    ./packages.nix
    ./zathura.nix
  ];

  services = {
    blueman-applet.enable = true;
    network-manager-applet.enable = true;
  };
}
