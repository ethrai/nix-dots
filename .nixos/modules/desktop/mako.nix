{ config, ... }: {
  stylix.targets.mako.enable = false;
  services = {
    mako = with config.lib.stylix.colors; {
      enable = true;
      font = "${config.stylix.fonts.monospace.name} 16";
      padding = "12";
      defaultTimeout = 3000;
      borderSize = 2;
      borderRadius = 0;
      backgroundColor = "#${base00}";
      borderColor = "#${base06}";
      progressColor = "over #${base02}";
      margin = "10,10,30,10";
      textColor = "#${base05}";
      layer = "top";
      icons = true;
      actions = true;
      anchor = "top-center";
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        default-timeout=200
        border-color=#${base08}
      '';
    };
  };
}
