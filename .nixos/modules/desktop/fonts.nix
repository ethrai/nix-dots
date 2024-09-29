{ inputs, pkgs, config, ... }: {

  home.packages = with pkgs;
    [ (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; }) ];

  stylix.fonts = {
    monospace = {
      package = pkgs.iosevka-bin.override { variant = "SGr-IosevkaTermSS14"; };
      name = "Iosevka Term SS14";
    };

    sansSerif = config.stylix.fonts.monospace;

    serif = config.stylix.fonts.monospace;

    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };

    sizes = {
      desktop = 15;
      applications = 15;
      popups = 15;
      terminal = 17;
    };
  };
}
