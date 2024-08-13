{ pkgs, ... }: {
  imports = [
    ./neovim
    ./shell
    ./btop.nix
    ./git.nix
    ./helix.nix
    ./tmux.nix
    ./ytdlp.nix
  ];
  home.packages = with pkgs; [
    # tui
    timg
    yazi
    mdcat
  ];
}
