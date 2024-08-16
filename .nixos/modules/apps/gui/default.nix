{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./chromium.nix
    ./foot.nix
    ./imv.nix
    ./kitty.nix
    ./mpv.nix
    ./vscode.nix
    ./zathura.nix
  ];

  home.packages = with pkgs; [
    libnotify
    dconf

    discord
    signal-desktop
    telegram-desktop

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
