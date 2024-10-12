{ lib, pkgs, ... }: {
  services = {
    openssh.enable = true;
    libinput.enable = true;
    gnome.gnome-keyring.enable = true;
    gnome.evolution-data-server.enable = true;
  };
}
