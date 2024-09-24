{ pkgs, inputs, ... }: {
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
    # kuber
    kubectl
    kubernetes
    kind
    kustomize
    pgcli
    vault

    gobject-introspection
    gob2

    protonvpn-gui
    protonvpn-cli

    wireshark
    ciscoPacketTracer8

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

    spring-boot-cli
    jdk21
    gradle
    maven

    inputs.nixvim.packages.${system}.default
  ];
}
