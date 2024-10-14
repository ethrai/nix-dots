{
  imports = [
    ./hardware-configuration.nix
    ./hardware.nix
    ./thinkpad.nix

    ./bootloader.nix

    ./users.nix
    ./virt.nix
    ./security.nix
    ./services.nix

    ./pipewire.nix

    ./network.nix
    ./environment.nix

    ./xremap.nix

    ./fonts.nix
  ];
}
