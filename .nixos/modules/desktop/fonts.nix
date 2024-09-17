{ inputs, pkgs, config, ... }: {

  home.packages = with pkgs;
    [ (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; }) ];

  stylix.fonts = {
    # monospace = {
    #   package = pkgs.iosevka-bin.override { variant = "SGr-IosevkaTermSS08"; };
    #   name = "Iosevka Term SS08";
    # };

    monospace = {
      package = pkgs.ibm-plex;
      name = "IBM Plex Mono";
    };

    sansSerif = {
      package = pkgs.ibm-plex;
      name = "IBM Plex Sans";
    };

    serif = config.stylix.fonts.sansSerif;

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
}
