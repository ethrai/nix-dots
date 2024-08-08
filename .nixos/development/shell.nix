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
    enableFishIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.fish = {
    enable = true;
    shellAliases = {
      #   l = "ls -lah";
      cd = "z";
      #   d = "docker";
      #   g = "g";
    };
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
