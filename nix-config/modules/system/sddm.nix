{ pkgs, ... }: {

  environment.systemPackages = with pkgs;
    [
      (catppuccin-sddm.override {
        flavor = "mocha";
        font = "Inter";
        fontSize = "15";
        loginBackground = false;
      })
    ];
  services = {
    displayManager = {
      sddm = {
        enable = true;
        theme = "catppuccin-mocha";
        package = pkgs.kdePackages.sddm;
        wayland.enable = true;
      };
    };
  };
}
