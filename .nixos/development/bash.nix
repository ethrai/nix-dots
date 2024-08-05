{
  pkgs,
  inputs,
  config,
  lib,
  ...
}:

{
  # enable bash
  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyControl = [
      "ignoredups"
      "ignorespace"
    ];
    bashrcExtra = ''
      eval "$(zoxide init bash)"
    '';
    sessionVariables = {
      XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
    };
    shellAliases = {
      l = "ls -lah";
      hel = "works";
      ".." = "cd ..";
      cd = "z";
      md = "mkdir -p";
    };
  };
  # home.file.".bashrc" = {
  #   source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dots/.bashrc";
  # };
}
