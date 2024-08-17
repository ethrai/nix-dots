{ inputs, pkgs, config, ... }: {

  home.packages = with pkgs;
    [ (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; }) ];

  stylix.fonts = {
    monospace = {
      package = (pkgs.iosevka.override { set = [ "SS08" ]; });
      name = "Iosevka SS08";
    };

    # sansSerif = {
    #   package = pkgs.noto-fonts;
    #   name = "Noto Sans";
    # };
    #
    # serif = config.stylix.fonts.sansSerif;
    #
    # emoji = {
    #   package = pkgs.noto-fonts-emoji;
    #   name = "Noto Color Emoji";
    # };

    sansSerif = config.stylix.fonts.monospace;

    serif = config.stylix.fonts.monospace;

    emoji = config.stylix.fonts.monospace;

    sizes = {
      desktop = 15;
      applications = 15;
      popups = 15;
      terminal = 16;
    };
  };
}
