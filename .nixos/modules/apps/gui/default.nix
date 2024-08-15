{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./chromium.nix
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
    okular
    obsidian

    spotify

  ];

  services = {
    blueman-applet.enable = true;
    network-manager-applet.enable = true;
  };
}
