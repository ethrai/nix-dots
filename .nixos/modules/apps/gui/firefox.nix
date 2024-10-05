{ pkgs, inputs, ... }: {
  stylix.targets.firefox.enable = true;
  stylix.targets.firefox.profileNames = [ "default" ];
  programs.firefox = {
    enable = false;
    profiles = {
      default = {
        id = 1;
        name = "ethrai";
        isDefault = true;
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          sponsorblock
          youtube-shorts-block

          ublock-origin

          bitwarden
          tridactyl

          darkreader
        ];
      };
    };
  };
}
