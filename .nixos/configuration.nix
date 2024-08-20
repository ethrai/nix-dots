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

  security.polkit.enable = true;
  security.pam.services.hyprlock = { };
  security.rtkit.enable = true;
  programs.hyprland.enable = true;

  services.geoclue2.enable = true;

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
  hardware.enableAllFirmware = true;

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
  stylix.targets.chromium.enable = false; # No such option in home-manager

  stylix.image = /home/sergio/.dots/wallpaper.png;
  stylix.polarity = "dark";
  stylix.autoEnable = true;
  stylix.homeManagerIntegration.autoImport = true;

  stylix.base16Scheme = {
    base00 = "1e1e2e"; # base #1e1e2e
    base01 = "181825"; # mantle #181825
    base02 = "313244"; # surface0 #313244
    base03 = "45475a"; # surface1 #45475a
    base04 = "585b70"; # surface2 #585b70
    base05 = "cdd6f4"; # text #cdd6f4
    base06 = "cba6f7"; # mauve #cba6f7
    base07 = "b4befe"; # lavender #b4befe
    base08 = "f38ba8"; # red #f38ba8
    base09 = "fab387"; # peach #fab387
    base0A = "f9e2af"; # yellow #f9e2af
    base0B = "a6e3a1"; # green #a6e3a1
    base0C = "94e2d5"; # teal #94e2d5
    base0D = "89b4fa"; # blue #89b4fa
    base0E = "f5e0dc"; # rosewater #f5e0dc
    base0F = "f2cdcd"; # flamingo #f2cdcd
  };

  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Ice";
  stylix.cursor.size = 20;

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
      "docker"
      "input"
      "audio"
      "networkmanager"
      "video"
    ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    helix
    git
    tmux
    docker
    seatd
    libseat
  ];

  # Do not touch
  system.stateVersion = "24.05";

}
