{ pkgs, ... }: {
  programs.java.enable = true;
  imports = [
    ./shell
    ./direnv.nix
    ./bat.nix
    ./btop.nix
    ./git.nix
    ./packages.nix
    ./tmux.nix
    ./yazi.nix
    ./ytdlp.nix
    ./zellij.nix
  ];
}
