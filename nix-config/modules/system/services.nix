{ lib, pkgs, ... }: {
  services = {
    # for thinkpads
    fstrim.enable = lib.mkDefault true;
    geoclue2.enable = true;
    # autologin
    greetd = let
      tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
      session = "${pkgs.hyprland}/bin/Hyprland";
      username = "sergio";
    in {
      enable = true;
      settings = {
        initial_session = {
          command = "${session}";
          user = "${username}";
        };
        default_session = {
          command =
            "${tuigreet} --greeting 'Welcome to NixOS!' --asterisks --remember --remember-user-session --time -cmd ${session}";
          user = "greeter";
        };
      };
    };

    # Media
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };

    openssh.enable = true;

    libinput.enable = true;
    tlp = { enable = true; };
    gnome.gnome-keyring.enable = true;
    gnome.evolution-data-server.enable = true;
    xremap = {
      userName = "sergio";
      config = {
        modmap = [{
          name = "default";
          remap = {
            capslock = {
              held = "leftctrl";
              alone = "esc";
            };
          };
        }];
      };
    };
  };
}
