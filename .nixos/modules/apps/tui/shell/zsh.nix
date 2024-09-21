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
    localVariables = { EDITOR = "nvim"; };
    autosuggestion.enable = true;
    defaultKeymap = "emacs";
    dotDir = ".config/zsh";
    history = {
      ignoreSpace = true;
      share = true;
    };
    historySubstringSearch = { enable = true; };

    shellAliases = {
      l = "eza -l";
      cd = "z";
      d = "docker";
      g = "git";
      v = "nvim";
      t = "tmux";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "history" ];
    };
  };
}
