{ pkgs, ... }: {
  imports = [
    ./shell
    ./direnv.nix
    ./bat.nix
    ./btop.nix
    ./nixvim
    ./git.nix
    ./packages.nix
    ./tmux.nix
    ./yazi.nix
    ./ytdlp.nix
    ./zellij.nix
  ];
}
