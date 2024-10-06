{
  imports = [
    ./hardware-configuration.nix
    ./hardware.nix
    ./bootloader.nix
    ./acpi_call.nix
    ./users.nix
    ./virt.nix
    ./security.nix
    ./services.nix
    ./network.nix
    ./stylix.nix
    ./fonts.nix
    ./environment.nix
  ];
}
