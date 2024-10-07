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
      base00 = "191724"; # #191724
      base01 = "1f1d2e"; # #1f1d2e
      base02 = "26233a"; # #26233a
      base03 = "6e6a86"; # #6e6a86
      base04 = "908caa"; # #908caa
      base05 = "e0def4"; # #e0def4
      base06 = "e0def4"; # #e0def4
      base07 = "524f67"; # #524f67
      base08 = "eb6f92"; # #eb6f92
      base09 = "f6c177"; # #f6c177
      base0A = "ebbcba"; # #ebbcba
      base0B = "31748f"; # #31748f
      base0C = "9ccfd8"; # #9ccfd8
      base0D = "c4a7e7"; # #c4a7e7
      base0E = "f6c177"; # #f6c177
      base0F = "524f67"; # #524f67
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.fira-code;
        name = "Fira Code";
      };

      serif = config.stylix.fonts.sansSerif;

      sansSerif = {
        package = pkgs.fira-sans;
        name = "Fira Sans";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        desktop = 14;
        applications = 14;
        popups = 14;
        terminal = 14;
      };
    };
  };
}
