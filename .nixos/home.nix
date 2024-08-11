{ config, pkgs, lib, inputs, ... }:

{
  imports = [ ./desktop/desktop.nix ./development/development.nix ];

  home = {
    username = "sergio";
    homeDirectory = "/home/sergio";

    pointerCursor = {
      gtk.enable = true;
      size = 20;
    };
  };

  programs.git = {
    enable = true;
    userEmail = "ryzhkosergej@gmail.com";
    userName = "Sergei Ryzhko";
    extraConfig = { core = { editor = "nvim"; }; };
  };

  nixpkgs = { config = { allowUnfree = true; }; };

  programs.chromium = {
    enable = true;
    commandLineArgs = [ ];
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; }
    ];
  };

  programs.btop = { enable = true; };

  home.packages = with pkgs; [
    dconf
    evince

    xdg-utils
    obs-studio
    qbittorrent

    wlsunset
    nautilus
    obsidian

    telegram-desktop
    discord
    rofi-wayland
    cliphist
    wl-clipboard
    hyprlock
    hypridle
    hyprshot
    playerctl
    pamixer
    brightnessctl
    networkmanagerapplet
    pavucontrol
    nwg-look
    gnome-keyring
    seahorse
    tree
    mpv
    chromium
    dunst
    htop
    yt-dlp

  ];

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.file = { };

  xdg = {
    enable = true;
    portal = {
      extraPortals =
        [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-hyprland ];
      enable = true;
      config = { preferred = { default = [ "gtk" "hyprland" ]; }; };
    };
    mimeApps = {
      enable = true;
      defaultApplications = {
        "text/markdown" = "nvim.desktop";
        "text/plain" = "nvim.desktop";
        "image/png" = "pqiv.desktop";
        "image/jpeg" = "pqiv.desktop";
        "image/gif" = "org.qutebrowser.qutebrowser.desktop";
        "application/x-wine-extension-osz" = "osu-stable.desktop";
        "x-scheme-handler/http" = "chromium.desktop";
        "x-scheme-handler/https" = "chromium.desktop";
        "application/pdf" = "org.gnome.Evince.desktop";
      };

    };
  };

  home.sessionVariables = {
    # XDG_CURRENT_DESKTOP = "Hyprland";
    # XDG_SESSION_TYPE = "wayland";
    # XDG_SCREENSHOTS_DIR = "~/screens";
    # XDG_CONFIG_HOME = "/home/sergio/.config";
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFONM_THEME = "qt5ct";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
    QT_AUTO_SCREEN_SCALE_FACTOR = 1;

  };

  services.dunst.enable = true;

  gtk.enable = true;
  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };

  programs.home-manager.enable = true;
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    # theme = "dmenu";
  };

  # dconf.settings = {
  #   "org/gnome/desktop/interface" = {
  #     color-scheme = "prefer-dark";
  #   };
  # };

}
