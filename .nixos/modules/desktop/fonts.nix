{ inputs, pkgs, config, ... }: {

  home.packages = with pkgs;
    [ (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; }) ];

  stylix.fonts = {
    monospace = {
      package = pkgs.iosevka;
      name = "Iosevka";
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
      desktop = 14;
      applications = 14;
      popups = 14;
      terminal = 16;
    };
  };
}
