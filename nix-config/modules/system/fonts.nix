{ pkgs, ... }: {
  fonts = {
    enableDefaultPackages = true;
    fontconfig = {
      defaultFonts = {
        serif = [ "Fira Sans" ];
        sansSerif = [ "Fira Sans" ];
        monospace = [ "Fira Code" ];
      };
    };

    packages = with pkgs; [
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
