{ pkgs, ... }: {
  imports = [ ./hardware-configuration.nix ];

  boot = {
    initrd.kernelModules = [ "i915" ];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
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
    geoclue2.enable = true;

    logind.extraConfig = "";

    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };
    openssh.enable = true;

    libinput.enable = true;
    thermald.enable = true;
    tlp = { enable = true; };
    gnome.gnome-keyring.enable = true;
    gnome.evolution-data-server.enable = true;
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
    earlySetup = true;
    packages = [ pkgs.terminus_font ];
    font = "ter-124b";
    useXkbConfig = true;
  };

  hardware = {
    enableAllFirmware = true;
    bluetooth.enable = true;
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver # LIBVA_DRIVER_NAME=iHD
        libvdpau-va-gl
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
    polarity = "dark";
    autoEnable = true;
    homeManagerIntegration.autoImport = true;
    base16Scheme = {
      base00 = "181818"; # #181818
      base01 = "282828"; # #282828
      base02 = "383838"; # #383838
      base03 = "585858"; # #585858
      base04 = "b8b8b8"; # #b8b8b8
      base05 = "d8d8d8"; # #d8d8d8
      base06 = "e8e8e8"; # #e8e8e8
      base07 = "f8f8f8"; # #f8f8f8
      base08 = "ab4642"; # #ab4642
      base09 = "dc9656"; # #dc9656
      base0A = "f7ca88"; # #f7ca88
      base0B = "a1b56c"; # #a1b56c
      base0C = "86c1b9"; # #86c1b9
      base0D = "7cafc2"; # #7cafc2
      base0E = "ba8baf"; # #ba8baf
      base0F = "a16946"; # #a16946
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
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
      "audio"
      "networkmanager"
      "video"
    ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # Do not touch
  system.stateVersion = "24.05";

}
