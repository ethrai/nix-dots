{ pkgs, lib, ... }: {
  boot = {
    initrd = { kernelModules = [ "i915" ]; };

    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
