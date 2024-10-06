{ pkgs, ... }: {

  "hyprland/language" = {
    "format" = "{}";
    "format-en" = "US";
    "format-ru" = "RU";
    "on-click" = "hyprctl switchxkblayout evision-usb-device next";
  };

  "hyprland/workspaces" = {
    persistent-workspaces = {
      "1" = [ ];
      "2" = [ ];
      "3" = [ ];
      "4" = [ ];
      "5" = [ ];
      "6" = [ ];
      "7" = [ ];
      "8" = [ ];
      "9" = [ ];
      "10" = [ ];
    };

    enable-bar-scroll = true;
    disable-scroll-wraparound = true;
  };

  pulseaudio = {
    format = "AUDIO:{volume}%";
    format-bluetooth = "AUDIO(BL):{volume}%";
    format-muted = "AUDIO(MUTED)";

    on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
    on-click-right = "pavucontrol";
  };

  memory = {
    interval = 1;
    format = "MEM:{:02}%";
  };

  cpu = {
    interval = 1;
    tooltip = false;
    format = "CPU:{usage:02}%";
  };

  battery = {
    tooltip = false;

    format = "BAT:{capacity}%";
    format-full = "BAT(F):{capacity}%";
    format-charging = "BAT(C):{capacity}%";
  };

  clock = {
    interval = 5;
    format = "{:%H:%M}";
  };

  "clock#date" = {
    interval = 5;
    format = "{:%d/%m/%Y}";
  };

}
