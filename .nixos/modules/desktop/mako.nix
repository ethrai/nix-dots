{ config, ... }: {
  stylix.targets.mako.enable = false;
  services = {
    mako = with config.lib.stylix.colors; {
      enable = true;
      font = "${config.stylix.fonts.monospace.name} 15";
      padding = "15";
      defaultTimeout = 3000;
      borderSize = 2;
      borderRadius = 4;
      backgroundColor = "#${base00}DD";
      borderColor = "#${base07}DD";
      progressColor = "over #${base02}DD";
      margin = "10,10,30,10";
      textColor = "#${base05}";
      layer = "top";
      icons = true;
      actions = true;
      anchor = "top-center";
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        default-timeout=10000000
        border-color=#${base08}DD
      '';
    };
  };
}
