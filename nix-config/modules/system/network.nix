{
  networking = {
    hostName = "caladan";
    networkmanager.enable = true;
    nameservers = [ "9.9.9.9" ];
    firewall = { enable = true; };
  };
}
