{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{

  imports = [
    ./tmux.nix
    ./vscode.nix
    ./helix.nix
    ./shell.nix
  ];

  programs.kitty.enable = true;

  home.packages = with pkgs; [

    kitty
    nixfmt-rfc-style
    tree
    neovim
    git
    gh
    httpie
    curl

    go
    gopls
    gomodifytags
    jq
    nodejs_22
    cargo
    rustc
    nil

    docker

    # shell
    zsh
    zsh-autosuggestions
    fzf
    zsh-fzf-tab
    zoxide
    zsh-completions
    zsh-syntax-highlighting

  ];
}
