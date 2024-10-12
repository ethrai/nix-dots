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
      "fullscreen,class:^(foot)$"
      "fullscreen,class:^(obsidian)$"

      "workspace 1,class:^(firefox)$"
      # "workspace 2,class:^(kitty)$"
      "workspace 2,class:^(kitty)$"

      "workspace 3,class:^(org.pwmt.zathura)$"
      "workspace 5,class:^(mpv)$"
      "workspace 6,title:^(Spotify Free)$"

      "workspace 7,class:^(libreoffice-writer)$"
      "workspace 7,initialTitle:^(libreoffice-startcenter)$"

      "workspace 8,class:^(org.telegram.desktop)$"
      "workspace 9,class:^(obsidian)$"
    ];

  };
}
