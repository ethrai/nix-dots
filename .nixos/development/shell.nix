{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
{
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
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
      ll = "ls -l";
      la = "ls -a";
      l = "ls -CF";
      cd = "z";
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
