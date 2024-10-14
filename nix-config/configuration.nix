{ pkgs, ... }: {
  imports = [ ./modules/system ];

  programs = {
    hyprland.enable = true;
    zsh.enable = true;
    dconf.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  time.timeZone = "Europe/Minsk";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "ter-132b";
    packages = [ pkgs.terminus_font ];
    earlySetup = true;
  };

  system.stateVersion = "24.05";
}
