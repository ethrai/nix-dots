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
      base00 = "1F1F28"; # #1F1F28
      base01 = "16161D"; # #16161D
      base02 = "223249"; # #223249
      base03 = "54546D"; # #54546D
      base04 = "727169"; # #727169
      base05 = "DCD7BA"; # #DCD7BA
      base06 = "C8C093"; # #C8C093
      base07 = "717C7C"; # #717C7C
      base08 = "C34043"; # #C34043
      base09 = "FFA066"; # #FFA066
      base0A = "C0A36E"; # #C0A36E
      base0B = "76946A"; # #76946A
      base0C = "6A9589"; # #6A9589
      base0D = "7E9CD8"; # #7E9CD8
      base0E = "957FB8"; # #957FB8
      base0F = "D27E99"; # #D27E99
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
