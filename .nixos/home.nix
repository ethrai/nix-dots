{ config, pkgs, lib, inputs, ... }:

{
  imports = [ ./modules/desktop ./modules/apps ];

  nixpkgs = { config = { allowUnfree = true; }; };

  home = {
    username = "sergio";
    homeDirectory = "/home/sergio";

    # pointerCursor = {
    #   gtk.enable = true;
    #   size = 20;
    # };
  };

  home.packages = with pkgs; [
    dconf
    evince

    cowsay

    foot
    docker

    obs-studio
    qbittorrent

    wlsunset
    nautilus
    playerctl
    pamixer
    brightnessctl
    pavucontrol
    nwg-look
    seahorse
    tree

    go
    gopls
    gomodifytags
    golangci-lint
    golangci-lint-langserver
    gotests
    gofumpt
    golines

    tree
    git
    gh
    httpie
    curl

    nixfmt-rfc-style
    nil

    # markdown
    marksman

    prettierd

    # js
    nodejs_22

    # rust
    cargo
    rustc

    shfmt
    shellcheck
    bash-language-server
  ];

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFONM_THEME = "qt5ct";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
    QT_AUTO_SCREEN_SCALE_FACTOR = 1;

  };

  gtk.enable = true;

  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };

  programs.home-manager.enable = true;

}
