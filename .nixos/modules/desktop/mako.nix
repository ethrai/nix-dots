{ config, ... }: {
  stylix.targets.mako.enable = false;
  services = {
    mako = {
      enable = true;
      font = "${config.stylix.fonts.monospace.name} 15";
      padding = "15";
      defaultTimeout = 5000;
      borderSize = 2;
      borderRadius = 5;
      backgroundColor = "#1e1e2e";
      borderColor = "#b4befe";
      progressColor = "over #313244";
      textColor = "#cdd6f4";
      icons = true;
      actions = true;
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        default-timeout=100000000
        border-color=#fab387
      '';
    };
  };
}
