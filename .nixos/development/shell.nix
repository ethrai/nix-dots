{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
{
  programs.fish.enable = true;
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    defaultKeymap = "emacs";
    dotDir = ".config/zsh";
    history = {
      ignoreSpace = true;
      share = true;
    };
    historySubstringSearch = {
      enable = true;
    };

    shellAliases = {
      l = "ls -lah";
      cd = "z";
      d = "docker";
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "history"
      ];
    };
  };
}
