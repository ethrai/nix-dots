{ lib, ... }: {
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      monospace-font-name = lib.mkForce "Fira Code 14";
      font-name = lib.mkForce "Fira Sans 14";
      document-font-name = lib.mkForce "Fira Sans 14";
    };
  };
}
