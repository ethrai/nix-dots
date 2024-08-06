{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

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

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];
  };

  hardware.bluetooth.enable = true;

  programs.hyprland = {
    enable = true;
    # package = inputs.hyprland.packages."${pkgs.sytsem}".hyprland;
    # xwayland.enable = true;
  };
  # ...

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  services.libinput.enable = true;
  services.thermald.enable = true;
  services.tlp = {
    enable = true;
  };
  services.gnome.gnome-keyring.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
  ];
  stylix.enable = true;
  stylix.autoEnable = true;
  stylix.homeManagerIntegration.autoImport = true;
  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/default-dark.yaml";
  stylix.base16Scheme = {
    base00 = "181818"; # black 1
    base01 = "282828"; # black 2
    base02 = "383838"; # grey 1
    base03 = "585858"; # grey 2
    base04 = "b8b8b8"; # grey 3
    base05 = "d8d8d8"; # white 1
    base06 = "e8e8e8"; # white 2
    base07 = "f8f8f8"; # white 3
    base08 = "ab4642"; # red 1
    base09 = "dc9656"; # orange
    base0A = "f7ca88"; # yellow
    base0B = "a1b56c"; # light green
    base0C = "86c1b9"; # cyan
    base0D = "7cafc2"; # blue
    base0E = "ba8baf"; # purple
    base0F = "a16946"; # brown

  };
  stylix.targets.chromium.enable = false;

  stylix.image = /home/sergio/Downloads/nice.png;

  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Classic";
  stylix.cursor.size = 20;

  stylix.fonts = {
    monospace = {
      package = pkgs.fira-code;
      name = "Fira Code";
    };

    sansSerif = {
      package = pkgs.noto-fonts;
      name = "Noto Sans";
    };

    serif = config.stylix.fonts.sansSerif;

    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };

    sizes = {
      desktop = 13;
      applications = 13;
      popups = 13;
      terminal = 13;
    };
  };

  programs.zsh.enable = true;
  environment.pathsToLink = [ "/share/zsh" ];

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
    packages = with pkgs; [ ];
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
