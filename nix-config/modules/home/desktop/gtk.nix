{ pkgs, ... }: {
  gtk = {
    enable = true;
    iconTheme.package = pkgs.papirus-icon-theme;
    iconTheme.name = "Papirus";
  };
}
