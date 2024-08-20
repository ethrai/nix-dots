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

    inputs.nixvim.packages.${system}.default
  ];
}
