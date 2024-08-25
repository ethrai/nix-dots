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
    lazygit
    timg
    yazi
    mdcat
    gh
    docker

    go
    gopls
    gomodifytags
    golangci-lint
    golangci-lint-langserver
    gotests
    impl
    gofumpt
    golines

    inputs.nixvim.packages.${system}.default
  ];
}
