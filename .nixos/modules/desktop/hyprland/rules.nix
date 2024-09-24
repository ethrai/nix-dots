{
  wayland.windowManager.hyprland.settings = {
    layerrule = [ ];
    windowrulev2 = [
      "float,class:blueman-manager"
      "float,title:^(Bitwarden)(.*)$"
      "float,title:^(Location)(.*)$"
      "float,title:^(Mullvad VPN)(.*)$"
      "float,title:^(Open File)(.*)$"
      "float,title:^(rofi)(.*)$"
      "float,title:^(Select a File)(.*)$"
      "float,title:^(Choose wallpaper)(.*)$"
      "float,title:^(Open Folder)(.*)$"
      "float,title:^(Save As)(.*)$"
      "float,title:^(Library)(.*)$"
      "float,title:^(File Upload)(.*)$"
      "float,title:^(KCalc)(.*)$"

      "fullscreen,class:^(kitty)$"
      # "opacity 0.91777,class:^(kitty)$"

      "fullscreen,class:^(foot)$"
      # "opacity 0.91777,class:^(foot)$"

      "fullscreen,class:^(obsidian)$"
      # "opacity 0.91777,class:^(obsidian)$"

      "workspace 2,class:^(firefox)$"
      "noinitialfocus,class:^(firefox)$"
      "workspace 3,class:^(org.pwmt.zathura)$"
      "workspace 4,class:^(mpv)$"
      "workspace 5,class:^(discord)$"
      "workspace 6,title:^(Spotify Free)$"
      "noinitialfocus,class:^(Spotiify Free)$"

      "workspace 7,class:^(libreoffice-writer)$"
      "workspace 7,initialTitle:^(libreoffice-startcenter)$"

      "workspace 8,class:^(org.telegram.desktop)$"
      "noinitialfocus,class:^(org.telegram.desktop)$"
      "workspace 11,class:^(obsidian)$"
    ];

  };
}
