{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  imports = [
    ./desktop/desktop.nix
    ./development/development.nix
  ];

  stylix.image = /home/sergio/.dots/wallpaper.png;

  home = {
    username = "sergio";
    homeDirectory = "/home/sergio";
  };

  programs.git = {
    enable = true;
    userEmail = "ryzhkosergej@gmail.com";
    userName = "Sergei Ryzhko";
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  programs.chromium = {
    enable = true;
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; }
    ];
  };

  programs.btop = {
    enable = true;
  };

  home.packages = with pkgs; [
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
    waybar
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
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
      ];
      enable = true;
      config = {
        preferred = {
          default = [
            "gtk"
            "hyprland"
          ];
        };
      };
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
    EDITOR = "hx";
    # XDG_CURRENT_DESKTOP = "Hyprland";
    # XDG_SESSION_TYPE = "wayland";
    # XDG_SCREENSHOTS_DIR = "~/screens";
    # XDG_CONFIG_HOME = "/home/sergio/.config";
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFONM_THEME = "qt5ct";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
    QT_AUTO_SCREEN_SCALE_FACTOR = 1;
    QT_STYLE_OVERRIDE = "kvantum";

  };

  services.hypridle = {
    enable = true;
    settings = {
      general = {
        after_sleep_cmd = "hyprctl dispatch dpms on";
        ignore_dbus_inhibit = false;
        lock_cmd = "hyprlock";
      };

      listener = [
        {
          timeout = 900;
          on-timeout = "hyprlock";
        }
        {
          timeout = 1200;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
      ];
    };
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

  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        grace = 300;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "~/Downloads/nice.png";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = true;
          fade_on_empty = false;
          font_color = "rgb(202, 211, 245)";
          inner_color = "rgb(91, 96, 120)";
          outer_color = "rgb(24, 25, 38)";
          outline_thickness = 5;
          placeholder_text = ''<span foreground="##cad3f5">Password...</span>'';

          shadow_passes = 2;
        }
      ];
    };
  };
}
