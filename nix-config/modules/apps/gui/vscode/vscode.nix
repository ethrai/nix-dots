{ config, pkgs, lib, inputs, ... }: {
  options = { };
  config = {
    stylix.targets.vscode.enable = false;
    programs.vscode = {
      enable = false;
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;
      mutableExtensionsDir = false; # manage extensions only with home-manager
      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        christian-kohler.path-intellisense
        # Markdown
        yzhang.markdown-all-in-one
        # Nix
        jnoortheen.nix-ide
        donjayamanne.githistory
        # Bash
        mads-hartmann.bash-ide-vscode
        # Go
        golang.go
        mvllow.rose-pine
      ];
    };

  };
}
