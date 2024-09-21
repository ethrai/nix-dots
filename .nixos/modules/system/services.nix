{ ... }: {
  services = {

    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    fstrim.enable = true;

    openssh.enable = true;
    tlp = { enable = true; };

    geoclue2.enable = true;
  };
}
