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
      base00 = "24283b"; # #24283b
      base01 = "1f2335"; # #1f2335
      base02 = "292e42"; # #292e42
      base03 = "565f89"; # #565f89
      base04 = "a9b1d6"; # #a9b1d6
      base05 = "c0caf5"; # #c0caf5
      base06 = "c0caf5"; # #c0caf5
      base07 = "c0caf5"; # #c0caf5
      base08 = "f7768e"; # #f7768e
      base09 = "ff9e64"; # #ff9e64
      base0A = "e0af68"; # #e0af68
      base0B = "9ece6a"; # #9ece6a
      base0C = "1abc9c"; # #1abc9c
      base0D = "41a6b5"; # #41a6b5
      base0E = "bb9af7"; # #bb9af7
      base0F = "ff007c"; # #ff007c
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = ["JetBrainsMono"];};
        name = "JetBrainsMono Nerd Font";
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
        terminal = 13;
      };
    };
  };
}
