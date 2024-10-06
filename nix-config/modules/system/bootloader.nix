{ pkgs, lib, ... }: {
  boot = {
    initrd = { kernelModules = [ "i915" ]; };
    plymouth = { enable = false; };
    kernelParams = [
      "i915.fastboot=1"
      "boot.shell_on_fail"
      # This allows the backlight save/load systemd service to work.
      "acpi_backlight=native"
    ];

    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
      timeout = lib.mkDefault 0;
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
