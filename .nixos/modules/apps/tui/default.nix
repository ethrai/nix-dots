{ pkgs, ... }: {
  imports =
    [ ./shell ./btop.nix ./git.nix ./packages.nix ./tmux.nix ./ytdlp.nix ];
}
