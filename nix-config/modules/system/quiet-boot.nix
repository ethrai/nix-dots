{ lib, pkgs, ... }: {
  console = lib.mkDefault {
    useXkbConfig = false;
    earlySetup = false;
  };
  boot = {
    plymouth = {
      enable = true;
      theme = "catppuccin-macchiato";
      themePackages = [ pkgs.catppuccin-plymouth ];
    };
    loader.timeout = 0;
    kernelParams = [
      "quiet"
      # kernel log message level
      "loglevel=3" # 1: system is unusable | 3: error condition | 7: very verbose

      # udev log message level
      "udev.log_level=3"

      # lower the udev log level to show only errors or worse
      "rd.udev.log_level=3"

      # disable systemd status messages
      # rd prefix means systemd-udev will be used instead of initrd
      "systemd.show_status=auto"
      "rd.systemd.show_status=auto"

      # disable the cursor in vt to get a black screen during intermissions
      "vt.global_cursor_default=0"
    ];
    consoleLogLevel = 0;
    initrd.verbose = false;
  };
}
