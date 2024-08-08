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
    ./kitty.nix
  ];

  home.packages = with pkgs; [

    (python3.withPackages (
      p:
      (with p; [
        python-lsp-server
        python-lsp-ruff
        python-lsp-black
      ])
    ))

    kitty
    nixfmt-rfc-style
    tree
    neovim
    git
    gh
    httpie
    curl
    # nix
    nixfmt-rfc-style
    nil

    # markdown
    marksman

    prettierd

    # golang
    go
    gopls
    gomodifytags
    gofumpt
    golines

    # python

    pyright

    # js
    nodejs_22

    # rust
    cargo
    rustc

    # docker
    docker

    # shell
    zsh
    zsh-autosuggestions
    fzf
    zsh-fzf-tab
    zoxide
    zsh-completions
    zsh-syntax-highlighting
    jq

  ];
}
