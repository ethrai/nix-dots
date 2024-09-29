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
      base00 = "24273a"; # base #24273a
      base01 = "1e2030"; # mantle #1e2030
      base02 = "363a4f"; # surface0 #363a4f
      base03 = "494d64"; # surface1 #494d64
      base04 = "5b6078"; # surface2 #5b6078
      base05 = "cad3f5"; # text #cad3f5
      base06 = "f4dbd6"; # rosewater #f4dbd6
      base07 = "b7bdf8"; # lavender #b7bdf8
      base08 = "ed8796"; # red #ed8796
      base09 = "f5a97f"; # peach #f5a97f
      base0A = "eed49f"; # yellow #eed49f
      base0B = "a6da95"; # green #a6da95
      base0C = "8bd5ca"; # teal #8bd5ca
      base0D = "8aadf4"; # blue #8aadf4
      base0E = "c6a0f6"; # mauve #c6a0f6
      base0F = "f0c6c6"; # flamingo #f0c6c6
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };

  stylix.fonts = {

    monospace = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };

    serif = config.stylix.fonts.sansSerif;

    sansSerif = {
      package = pkgs.inter;
      name = "Inter";
    };

    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };

    sizes = {
      desktop = 14;
      applications = 14;
      popups = 14;
      terminal = 14;
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
