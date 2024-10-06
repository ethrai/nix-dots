{ pkgs, config, ... }: {
  stylix = {
    enable = true;
    image = pkgs.fetchurl {
      url =
        "https://www.pixelstalk.net/wp-content/uploads/2016/05/Epic-Anime-Awesome-Wallpapers.jpg";
      sha256 = "enQo3wqhgf0FEPHj2coOCvo7DuZv+x5rL/WIo4qPI50=";
    };
    polarity = "dark";
    homeManagerIntegration.autoImport = true;
    autoEnable = true;
    base16Scheme = {
      base00 = "232136"; # #232136
      base01 = "2a273f"; # #2a273f
      base02 = "393552"; # #393552
      base03 = "6e6a86"; # #6e6a86
      base04 = "908caa"; # #908caa
      base05 = "e0def4"; # #e0def4
      base06 = "e0def4"; # #e0def4
      base07 = "56526e"; # #56526e
      base08 = "eb6f92"; # #eb6f92
      base09 = "f6c177"; # #f6c177
      base0A = "ea9a97"; # #ea9a97
      base0B = "3e8fb0"; # #3e8fb0
      base0C = "9ccfd8"; # #9ccfd8
      base0D = "c4a7e7"; # #c4a7e7
      base0E = "f6c177"; # #f6c177
      base0F = "56526e"; # #56526e

      # base00= "faf4ed"; # #faf4ed
      # base01= "fffaf3"; # #fffaf3
      # base02= "f2e9de"; # #f2e9de
      # base03= "9893a5"; # #9893a5
      # base04= "797593"; # #797593
      # base05= "575279"; # #575279
      # base06= "575279"; # #575279
      # base07= "cecacd"; # #cecacd
      # base08= "b4637a"; # #b4637a
      # base09= "ea9d34"; # #ea9d34
      # base0A= "d7827e"; # #d7827e
      # base0B= "286983"; # #286983
      # base0C= "56949f"; # #56949f
      # base0D= "907aa9"; # #907aa9
      # base0E= "ea9d34"; # #ea9d34
      # base0F= "cecacd"; # #cecacd
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package =
          pkgs.iosevka-bin.override { variant = "SGr-IosevkaTermSS18"; };
        name = "Iosevka Term SS18";
      };

      serif = config.stylix.fonts.sansSerif;

      sansSerif = {
        package = pkgs.roboto;
        name = "Roboto";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        desktop = 13;
        applications = 13;
        popups = 13;
        terminal = 16;
      };
    };
  };
}
