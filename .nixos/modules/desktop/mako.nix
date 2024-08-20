{ config, ... }: {
  stylix.targets.mako.enable = false;
  services = {
    mako = with config.lib.stylix.colors; {
      enable = true;
      font = "${config.stylix.fonts.monospace.name} 15";
      padding = "15";
      defaultTimeout = 5000;
      borderSize = 2;
      borderRadius = 5;
      backgroundColor = "${base00}";
      borderColor = "#${base07}";
      progressColor = "over #${base02}";
      textColor = "#${base05}";
      icons = true;
      actions = true;
      anchor = "bottom-right";
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        default-timeout=100000000
        border-color=#${base09}
      '';
    };
  };
}
