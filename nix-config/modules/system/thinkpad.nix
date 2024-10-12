{ lib, config, ... }: {
  services = {
    fstrim.enable = lib.mkDefault true;
    tlp = { enable = true; };
  };

# acpi_call makes tlp work for newer thinkpads
  boot = lib.mkIf config.services.tlp.enable {
    kernelModules = [ "acpi_call" ];
    extraModulePackages = with config.boot.kernelPackages; [ acpi_call ];

    kernelParams = [
      # This allows the backlight save/load systemd service to work.
      "acpi_backlight=native"
    ];
  };

}
