{ pkgs, ... }: {

  home.packages = with pkgs; [
    libnotify

    discord
    signal-desktop
    telegram-desktop
    skypeforlinux

    libreoffice-fresh
    zotero
    evince
    obsidian
    zed-editor

    nautilus
    file-roller

    spotify

    obs-studio
    
    protonvpn-gui
    anki-bin
    wireshark
   #  ciscoPacketTracer8

  ];

}
