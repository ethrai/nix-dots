{ pkgs, ... }: {
  fonts = {
    enableDefaultPackages = true;
    fontconfig = {
      defaultFonts = {
        # serif = [ "Inter" ];
        # sansSerif = [ "Inter" ];
        # monospace = [ "JetBrainsMono Nerd Font" ];
      };
    };

    packages = with pkgs; [
      noto-fonts-cjk
      inter
      (iosevka-bin.override { variant = "SGr-IosevkaTermSS08"; })
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
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
