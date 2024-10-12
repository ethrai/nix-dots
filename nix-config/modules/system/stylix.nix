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
      base00 = "24273a"; # base #24273a
      base01 = "1e2030"; # mantle #1e2030
      base02 = "363a4f"; # surface0 #363a4f
      base03 = "494d64"; # surface1 #494d64
      base04 = "5b6078"; # surface2 #5b6078
      base05 = "cad3f5"; # text #cad3f5
      base06 = "f4dbd6"; # rosewater #f4dbd6
      base07 = "b7bdf8"; # lavender #b7bdf8
      base08 = "ed8796"; # red #ed8796
      base09 = "f5a97f"; # peach #f5a97f
      base0A = "eed49f"; # yellow #eed49f
      base0B = "a6da95"; # green #a6da95
      base0C = "8bd5ca"; # teal #8bd5ca
      base0D = "8aadf4"; # blue #8aadf4
      base0E = "c6a0f6"; # mauve #c6a0f6
      base0F = "f0c6c6"; # flamingo #f0c6c6
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.iosevka-bin.override { variant =  "SS18" ; };
        name = "Iosevka SS18";
      };

      serif = config.stylix.fonts.sansSerif;

      sansSerif = {
        package = pkgs.inter;
        name = "Inter";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        desktop = 13;
        applications = 13;
        popups = 13;
        terminal = 14;
      };
    };
  };
}
