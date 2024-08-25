{ config, pkgs, lib, inputs, ... }: {

  home.packages = with pkgs; [
    zsh-autosuggestions
    zsh-fzf-tab
    zsh-completions
    zsh-syntax-highlighting
  ];

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
    historySubstringSearch = { enable = true; };

    shellAliases = {
      l = "ls -lah";
      cd = "z";
      d = "docker";
      g = "git";
      v = "nvim";
      t = "tmux";
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" "history" "colored-man-pages" ];
    };
  };
}
