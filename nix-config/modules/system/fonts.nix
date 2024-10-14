{ pkgs, ... }: {
  fonts = {
    enableDefaultPackages = true;
    fontconfig = {
      defaultFonts = {
        serif = [ "Inter" ];
        sansSerif = [ "Inter" ];
        monospace = [ "JetBrains Mono" ];
      };
    };

    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
      noto-fonts-cjk
      inter
      noto-fonts-emoji
      liberation_ttf
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
      corefonts
      vistafonts
    ];
  };
}
