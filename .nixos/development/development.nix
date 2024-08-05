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
    ./bash.nix
  ];

  programs.kitty.enable = true;

  home.packages = with pkgs; [

    kitty
    nixfmt-rfc-style
    tree
    fish
    neovim
    git
    gh
    httpie
    curl
    zsh

    go
    gopls
    gomodifytags
    jq
    nodejs_22
    cargo
    rustc
    nil

    docker
  ];
}
