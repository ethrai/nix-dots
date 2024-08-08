{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    #     inputs.home-manager.nixosModules.default
  ];

  boot = {
    initrd.kernelModules = [ "i915" ];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  security.polkit.enable = true;
  security.pam.services.hyprlock = { };

  networking.hostName = "caladan"; # Define your hostname.
  networking.networkmanager.enable = true; # Easiest to use and most distros use this by default.

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
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

  # Sound
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };
  services.openssh.enable = true;

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver # LIBVA_DRIVER_NAME=iHD
      libvdpau-va-gl
    ];
  };

  hardware.bluetooth.enable = true;

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    # NIXOS_OZONE_WL = "1";
  };

  services.libinput.enable = true;
  services.thermald.enable = true;
  services.tlp = {
    enable = true;
  };
  services.gnome.gnome-keyring.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  stylix.enable = true;
  stylix.polarity = "light";
  stylix.autoEnable = true;
  stylix.homeManagerIntegration.autoImport = true;
  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/default-dark.yaml";
  stylix.base16Scheme = {
    base00 = "ffffff";
    base01 = "eeeeee";
    base02 = "cccccc";
    base03 = "767676";
    base04 = "767676";
    base05 = "444444";
    base06 = "333333";
    base07 = "222222";
    base08 = "d03e3e";
    base09 = "d7691d";
    base0A = "ad8200";
    base0B = "31861f";
    base0C = "00998f";
    base0D = "3173c5";
    base0E = "9e57c2";
    base0F = "895025";

  };

  stylix.targets.chromium.enable = false;

  stylix.image = /home/sergio/.dots/wallpaper.png;

  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Classic";
  stylix.cursor.size = 20;

  stylix.fonts = {
    monospace = {
      package = (pkgs.nerdfonts.override { fonts = [ "Hack" ]; });
      name = "Hack Nerd Font";
    };
    serif = config.stylix.fonts.monospace;
    sansSerif = config.stylix.fonts.monospace;
    emoji = config.stylix.fonts.monospace;

    # sansSerif = {
    #   package = pkgs.noto-fonts;
    #   name = "Noto Sans";
    # };

    # serif = config.stylix.fonts.sansSerif;

    # emoji = {
    #   package = pkgs.noto-fonts-emoji;
    #   name = "Noto Color Emoji";
    # };

    sizes = {
      desktop = 12;
      applications = 12;
      popups = 12;
      terminal = 13;
    };
  };

  fonts.packages = with pkgs; [
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    # fira-code
    # fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
  ];

  programs.zsh.enable = true;
  programs.fish.enable = true;
  programs.steam.enable = true;
  # environment.pathsToLink = [ "/share/zsh" ];
  environment.pathsToLink = [
    "/share/xdg-desktop-portal"
    "/share/applications"
    "/share/zsh"
  ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sergio = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "input"
      "networkmanager"
      "video"
      "docker"
    ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    helix
    wget
    git
    stow
    tmux
    lm_sensors

  ];
  # Do not touch
  system.stateVersion = "24.05";

}
