{ ... }: {
  wayland.windowManager.hyprland.settings = {
    layerrule = [

      "blurpopups, notifications"
      "blur, notifications"
      "ignorezero, notifications"
    ];
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

      "workspace 2,class:^(chromium-browser)$"
      "workspace 3,class:^(org.gnome.Nautilus)$"
      "workspace 3,class:^(org.gnome.FileRoller)$"
      "workspace 4,class:^(org.pwmt.zathura)$"
      "workspace 4,class:^(mpv)$"
      "workspace 8,class:^(org.pulseaudio.pavucontrol)$"
      "workspace 5,class:^(org.telegram.desktop)$"
      "workspace 6,class:^(discord)$"
      "workspace 7,title:^(Spotify Free)$"
      "workspace 11,class:^(obsidian)$"

      "opacity 0.9447,class:^(kitty)$"
    ];

  };
}
