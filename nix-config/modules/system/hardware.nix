{ pkgs, ... }: {
  hardware = {
    uinput.enable = true;
    enableAllFirmware = true;
    bluetooth.enable = true;
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver # LIBVA_DRIVER_NAME=iHD
        libvdpau-va-gl
        intel-vaapi-driver
        vpl-gpu-rt
      ];
    };
  };
}
