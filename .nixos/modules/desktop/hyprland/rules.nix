{ inputs, pkgs, config, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
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
      "workspace 8,class:^(org.pulseaudio.pavucontrol)$"
      "workspace 5,class:^(org.telegram.desktop)$"
      "workspace 9,class:^(discord)$"

      # "opacity 0.90,class:^(kitty)$"
      "fullscreen,class:^(kitty)$"
    ];
  };
}
