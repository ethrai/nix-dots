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
      mutableExtensionsDir = false; # manage extensions only with home-manager
      package = pkgs.vscode;
      enable = true;
      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        christian-kohler.path-intellisense
        # Markdown
        yzhang.markdown-all-in-one

        # Nix
        jnoortheen.nix-ide

        donjayamanne.githistory

        supermaven.supermaven

        # Bash
        mads-hartmann.bash-ide-vscode

        # Go
        golang.go

        # Python
        ms-python.python
        ms-python.debugpy

        jdinhlife.gruvbox

      ];
    };

    home.file = {
      ".config/${code}/User/settings.json".source = ofSym "${homeDir}/.dots/.config/VSCodium/User/settings.json";
      ".config/${code}/User/keybindings.json".source = ofSym "${homeDir}/.dots/.config/VSCodium/User/keybindings.json";
    };

  };
}
