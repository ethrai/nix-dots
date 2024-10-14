{ pkgs, inputs, ... }: {
  imports = [ inputs.stylix.homeManagerModules.stylix ];
  stylix = {
    enable = true;
    autoEnable = true;
    image = /home/sergio/dotfiles/wallpaper.png;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    polarity = "light";
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
    fonts = {
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };

      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrains Mono";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 13;
        desktop = 13;
        popups = 13;
        terminal = 13;
      };
    };
  };
}
