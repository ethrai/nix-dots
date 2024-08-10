{
  inputs,
  pkgs,
  config,
  lib,
  ...
}:

{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "float, class:org.pulseaudio.pavucontrol"
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
      "workspace 4,class:^(org.pulseaudio.pavucontrol)$"
      "workspace 5,class:^(org.telegram.desktop)$"
      "workspace 5,class:^(discord)$"

      "opacity 0.8,class:^(kitty)$"
    ];
  };
}
