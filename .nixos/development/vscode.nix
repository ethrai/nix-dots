{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
let
  homeDir = config.home.homeDirectory;
  ofSym = config.lib.file.mkOutOfStoreSymlink;
  code = "Code";
in
{
  options = { };
  config = {
    stylix.targets.vscode.enable = false;
    programs.vscode = {
      package = pkgs.vscode;
      enable = true;
      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        yzhang.markdown-all-in-one
        jnoortheen.nix-ide

        mads-hartmann.bash-ide-vscode
      ];
    };

    home.file = {
      ".config/${code}/User/settings.json".source = ofSym "${homeDir}/.dots/.config/VSCodium/User/settings.json";
      ".config/${code}/User/keybindings.json".source = ofSym "${homeDir}/.dots/.config/VSCodium/User/keybindings.json";
    };

  };
}
