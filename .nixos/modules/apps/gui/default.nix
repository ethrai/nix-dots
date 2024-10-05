{ pkgs, inputs, ... }: {
  imports = [
    ./alacritty.nix
    ./chromium.nix
    ./firefox.nix
    ./imv.nix
    ./mpv.nix
    ./kitty.nix
    ./zathura.nix
  ];

  home.packages = with pkgs; [
    libnotify

    discord
    signal-desktop
    telegram-desktop
    skypeforlinux
    # firefox

    libreoffice-fresh
    zotero
    evince
    obsidian

    nautilus
    file-roller

    spotify

    obs-studio

  ];

  services = {
    blueman-applet.enable = true;
    network-manager-applet.enable = true;
  };
}
