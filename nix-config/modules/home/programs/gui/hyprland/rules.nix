{
  wayland.windowManager.hyprland.settings = {
    layerrule = [ ];
    windowrulev2 = [
      "float, class:Rofi"
      "float, class:viewnior"
      "float, class:feh"
      "float, class:wlogout"
      "float, class:file_progress"
      "float, class:confirm"
      "float, class:dialog"
      "float, class:download"
      "float, class:notification"
      "float, class:error"
      "float, class:splash"
      "float, class:confirmreset"
      "float, class:org.kde.polkit-kde-authentication-agent-1"
      "float, class:^(wdisplays)$"
      "float, class:^(blueman-manager)$"
      "float, class:^(nm-connection-editor)$"
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

      # fix xwayland apps
      "rounding 0, xwayland:1, floating:1"
      "center, class:^(.*jetbrains.*)$, title:^(Confirm Exit|Open Project|win424|win201|splash)$"
      "size 640 400, class:^(.*jetbrains.*)$, title:^(splash)$"

      "idleinhibit focus, class:^(steam_app).*"
      "idleinhibit focus, class:^(gamescope).*"
      "idleinhibit focus, class:.*(cemu|yuzu|Ryujinx|emulationstation|retroarch).*"
      "idleinhibit fullscreen, title:.*(cemu|yuzu|Ryujinx|emulationstation|retroarch).*"
      "idleinhibit fullscreen, title:^(.*(Twitch|TNTdrama|YouTube|Bally Sports|Video Entertainment|Plex)).*(Firefox).*$"
      "idleinhibit focus, title:^(.*(Twitch|TNTdrama|YouTube|Bally Sports|Video Entertainment|Plex)).*(Firefox).*$"
      "idleinhibit focus, class:^(mpv|.+exe)$"

      # Browser
      "workspace 1 silent,class:^(firefox)$"

      # Pdf documents
      "workspace 3,class:^(org.pwmt.zathura)$"

      # Social
      "workspace 5 silent, class:^(Slack)$"
      "workspace 5 silent, class:^(org.telegram.desktop)$"
      "workspace 5 silent, class:^(discord)$"
      "workspace 5 silent, class:^(zoom)$"
      "workspace 5 silent, class:^(Element)$"
      "workspace 5 silent, class:^(teams-for-linux)$"
      "workspace 5 silent, class:^(skype-for-linux)$"

      # Media
      "workspace 11, class:^(mpv|vlc|mpdevil)$"
      "workspace 11 silent, class:^(Spotify)$"
      "workspace 11 silent, title:^(Spotify)$"

      # Ofice documents
      "workspace 7,class:^(libreoffice-writer)$"
      "workspace 7,initialTitle:^(libreoffice-startcenter)$"

      "workspace 9,class:^(obsidian)$"
    ];

  };
}
