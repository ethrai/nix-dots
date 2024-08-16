{ inputs, pkgs, config, ... }: {

  stylix.fonts = {
    monospace = {
      package = (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; });
      name = "FiraCode Nerd Font";
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

    # sansSerif = config.stylix.fonts.monospace;
    #
    # serif = config.stylix.fonts.sansSerif;
    #
    # emoji = config.stylix.fonts.monospace;

    sizes = {
      desktop = 13;
      applications = 13;
      popups = 13;
      terminal = 14;
    };
  };
}
