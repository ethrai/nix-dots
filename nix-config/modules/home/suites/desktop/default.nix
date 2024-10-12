{ pkgs, ... }: {
  home.packages = with pkgs; [
    bitwarden
    feh
    fontpreview
    gparted
    input-leap
    kdePackages.ark
    kdePackages.gwenview

    libnotify

    libreoffice-fresh
    obsidian
    zed-editor

    nautilus
    file-roller

    spotify

    obs-studio

    protonvpn-gui
    anki-bin
    wireshark

    discord
    signal-desktop
    telegram-desktop
    skypeforlinux

    wl-clipboard
    cliphist
    playerctl
    pamixer
    brightnessctl
    pavucontrol
  ];
}
