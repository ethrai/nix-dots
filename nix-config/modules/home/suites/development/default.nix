{ pkgs, ... }: {
  home.packages = with pkgs; [
    jq
    ripgrep
    fd
    curl
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

    kubectl
    kubernetes
    kind
    kustomize
    pgcli
    vault

    gobject-introspection
    gob2

    protonvpn-cli

    nasm

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

    nodejs

    spring-boot-cli
    gradle
    maven
    lombok

  ];
}
