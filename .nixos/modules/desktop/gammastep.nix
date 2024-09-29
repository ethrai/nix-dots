{ pkgs, ... }: {
  home.packages = with pkgs; [ geoclue2 ];
  services.gammastep = {
    enable = true;
    dawnTime = "6:00-8:00";
    duskTime = "20:00-22:00";
  };
}
