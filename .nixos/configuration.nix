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
      vpl-gpu-rt
    ];
  };

  hardware.bluetooth.enable = true;

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "iHD";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  services.libinput.enable = true;
  services.thermald.enable = true;
  services.tlp = { enable = true; };
  services.gnome.gnome-keyring.enable = true;

  stylix.enable = true;
  stylix.image = /home/sergio/.dots/wallpaper.png;
  stylix.polarity = "dark";
  stylix.autoEnable = true;
  stylix.homeManagerIntegration.autoImport = true;

  stylix.base16Scheme = {
    base00 = "181818";
    base01 = "282828";
    base02 = "383838";
    base03 = "585858";
    base04 = "b8b8b8";
    base05 = "d8d8d8";
    base06 = "e8e8e8";
    base07 = "f8f8f8";
    base08 = "ab4642";
    base09 = "dc9656";
    base0A = "f7ca88";
    base0B = "a1b56c";
    base0C = "86c1b9";
    base0D = "7cafc2";
    base0E = "ba8baf";
    base0F = "a16946";
  };
  stylix.targets.chromium.enable = false;

  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Ice";
  stylix.cursor.size = 20;

  stylix.fonts = {
    monospace = {
      package = (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; });
      name = "FiraCode Nerd Font";
    };

    sansSerif = config.stylix.fonts.monospace;

    emoji = config.stylix.fonts.monospace;

    serif = config.stylix.fonts.sansSerif;

    sizes = {
      desktop = 13;
      applications = 13;
      popups = 13;
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
  ];

  programs.zsh.enable = true;
  programs.steam.enable = true;
  # environment.pathsToLink = [ "/share/zsh" ];
  environment.pathsToLink =
    [ "/share/xdg-desktop-portal" "/share/applications" "/share/zsh" ];

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
    git
    tmux

  ];

  # Do not touch
  system.stateVersion = "24.05";

}
