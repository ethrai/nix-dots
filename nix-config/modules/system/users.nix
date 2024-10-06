{ pkgs, ... }: {

  users.users.sergio = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
      "input"
      "uinput"
      "audio"
      "networkmanager"
      "video"
    ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };
}
