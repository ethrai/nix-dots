{ pkgs, ... }: {
  imports = [
    ./fd.nix
    ./bat.nix
    ./eza.nix
    ./fzf.nix
    ./git.nix
    ./btop.nix
    ./khal.nix
    ./yazi.nix
    ./ytdlp.nix
    ./direnv.nix
    ./zellij.nix
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    # Desktop
    wl-clipboard
    cliphist
    playerctl
    pamixer
    brightnessctl
    pavucontrol

    # fancy cli tools
    jq
    ripgrep
    fd
    curl
    wget
    httpie
    gnumake
    gcc
    ffmpeg
    killall
    python3
    gcc
    lazygit
    timg
    mdcat
    gh
    docker
    zip
    unzip
    catppuccinifier-cli
    pantheon.elementary-capnet-assist
    # kubernetes
    kubectl
    kubernetes
    kind
    kustomize
    pgcli
    vault
    
    protonvpn-cli

    nasm
    # golang, could be in dev template (Flake)
    go
    gopls
    gotools
    reftools
    gomodifytags
    golangci-lint
    golangci-lint-langserver
    gotests
    impl
    gofumpt
    cobra-cli
    hey
    go-tools
    govulncheck
    golines
    iferr
    delve
    ginkgo
    gotestsum
    govulncheck
    go-migrate
    sqlite
    sqlite-utils
    # js
    nodejs
    # java
    spring-boot-cli
    gradle
    maven
    lombok

  ];
}
