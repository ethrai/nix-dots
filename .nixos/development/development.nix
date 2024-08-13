{ config, pkgs, lib, inputs, ... }:

{

  imports =
    [ ./tmux.nix ./vscode.nix ./helix.nix ./shell.nix ./kitty.nix ./neovim ];

  home.packages = with pkgs; [

    (python3.withPackages
      (p: (with p; [ python-lsp-server python-lsp-ruff python-lsp-black ])))

    gotests
    gnumake
    foot
    nixfmt-rfc-style
    tree
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
    golangci-lint
    golangci-lint-langserver

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
    ripgrep
    fd

    shfmt
    shellcheck
    bash-language-server

  ];
}
