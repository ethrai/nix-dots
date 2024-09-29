{ pkgs, lib, config, inputs, ... }: {
  imports = [ ./hardware-configuration.nix ./acpi_call.nix ];
  boot = {
    initrd = { kernelModules = [ "i915" ]; };
    plymouth = { enable = false; };
    kernelParams = [
      "i915.fastboot=1"
      "boot.shell_on_fail"
      # This allows the backlight save/load systemd service to work.
      "acpi_backlight=native"
    ];

    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
      timeout = lib.mkDefault 0;
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };

  # use docker without Root access (Rootless docker)
  virtualisation.docker = {
    enable = true; # Enable docker
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
  security = {
    polkit.enable = true;
    pam.services.hyprlock = { };
    rtkit.enable = true;
  };

  services = {
    fstrim.enable = lib.mkDefault true;
    geoclue2.enable = true;
    greetd = let
      tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
      session = "${pkgs.hyprland}/bin/Hyprland";
      username = "sergio";
    in {
      enable = true;
      settings = {
        initial_session = {
          command = "${session}";
          user = "${username}";
        };
        default_session = {
          command =
            "${tuigreet} --greeting 'Welcome to NixOS!' --asterisks --remember --remember-user-session --time -cmd ${session}";
          user = "greeter";
        };
      };
    };

    # Autdio stuff
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };

    openssh.enable = true;

    libinput.enable = true;
    tlp = { enable = true; };
    gnome.gnome-keyring.enable = true;
    gnome.evolution-data-server.enable = true;

    xremap = {
      enable = true;
      withWlroots = true;
      userName = "sergio";
      config = {
        modmap = [{
          name = "power caps";
          remap.CapsLock = {
            held = "leftctrl";
            alone = "esc";
          };
        }];
      };
    };
  };

  networking.hostName = "caladan"; # Define your hostname.
  networking.networkmanager.enable =
    true; # Easiest to use and most distros use this by default.

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Minsk";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "ter-132n";
    packages = [ pkgs.terminus_font ];
    useXkbConfig = true;
    earlySetup = true;
  };

  hardware = {
    uinput.enable = true;
    enableAllFirmware = true;
    bluetooth.enable = true;
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver # LIBVA_DRIVER_NAME=iHD
        libvdpau-va-gl
        intel-vaapi-driver
        vpl-gpu-rt
      ];
    };
  };

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "iHD";
    WLR_NO_HARDWARE_CURSORS = "1";
    EDITOR = "nvim";
  };

  stylix = {
    enable = true;
    image = /home/sergio/.dots/wallpaper.png;
    polarity = "light";
    autoEnable = true;
    homeManagerIntegration.autoImport = true;
    base16Scheme = {
      base00 = "1A1B26"; # #1A1B26
      base01 = "16161E"; # #16161E
      base02 = "2F3549"; # #2F3549
      base03 = "444B6A"; # #444B6A
      base04 = "787C99"; # #787C99
      base05 = "A9B1D6"; # #A9B1D6
      base06 = "CBCCD1"; # #CBCCD1
      base07 = "D5D6DB"; # #D5D6DB
      base08 = "F7768E"; # #F7768E
      base09 = "A9B1D6"; # #A9B1D6
      base0A = "0DB9D7"; # #0DB9D7
      base0B = "9ECE6A"; # #9ECE6A
      base0C = "B4F9F8"; # #B4F9F8
      base0D = "2AC3DE"; # #2AC3DE
      base0E = "BB9AF7"; # #BB9AF7
      base0F = "C0CAF5"; # #C0CAF5
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };

  stylix.fonts = {

    monospace = {
      package = pkgs.iosevka-bin.override { variant = "SS08"; };
      name = "Iosevka SS08";
    };

    sansSerif = config.stylix.fonts.serif;

    serif = {
      package = pkgs.noto-fonts;
      name = "Noto Sans";
    };

    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };

    sizes = {
      desktop = 14;
      applications = 14;
      popups = 14;
      terminal = 16;
    };
  };

  fonts.packages = with pkgs; [
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    corefonts
    vistafonts
  ];

  programs = {
    hyprland.enable = true;
    zsh.enable = true;
    fish.enable = true;
    dconf.enable = true;
  };
  # environment.pathsToLink = [ "/share/zsh" ];

  environment = {
    pathsToLink =
      [ "/share/xdg-desktop-portal" "/share/applications" "/share/zsh" ];
    systemPackages = with pkgs; [ helix git tmux docker seatd libseat ];
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sergio = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
      "input"
      "uinput"
      "audio"
      "networkmanager"
      "video"
    ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # Do not touch
  system.stateVersion = "24.05";

}
