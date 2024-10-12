{ pkgs, ... }: {
  fonts = {
    enableDefaultPackages = true;
    fontconfig = {
      defaultFonts = {
        serif = [ "Roboto" ];
        sansSerif = [ "Roboto" ];
        monospace = [ "Roboto Mono" ];
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
