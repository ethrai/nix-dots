{ config, ... }: {
  services = {
    mako = {
      enable = true;
      padding = "12";
      defaultTimeout = 3000;
      borderSize = 6;
      borderRadius = 10;
      margin = "10,10,30,10";
      layer = "top";
      icons = true;
      actions = true;
      anchor = "top-center";
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        default-timeout=200
      '';
    };
  };
}
