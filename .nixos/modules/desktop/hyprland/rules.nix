{ ... }: {
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

      "workspace 2,class:^(firefox)$"
      "workspace 3,class:^(org.gnome.Nautilus)$"
      "workspace 3,class:^(org.gnome.FileRoller)$"
      "workspace 4,class:^(org.pwmt.zathura)$"
      "workspace 5,class:^(mpv)$"
      "workspace 6,class:^(discord)$"
      "workspace 7,title:^(Spotify Free)$"
      "workspace 7,title:^(Spotify)$"
      "workspace 8,class:^(libreoffice-writer)$"
      "workspace 9,class:^(org.telegram.desktop)$"
      "workspace 11,class:^(obsidian)$"

    ];

  };
}
