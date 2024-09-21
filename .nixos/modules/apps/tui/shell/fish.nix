{ pkgs, ... }: {
  stylix.targets.fish.enable = true;
  programs.fish = {
    enable = true;
    shellAliases = {
      l = "eza -l";
      cd = "z";
      d = "docker";
      g = "git";
      v = "nvim";
      t = "tmux";
    };
    plugins = with pkgs.fishPlugins; [
      {
        name = "transient-fish";
        src = transient-fish.src;
      }
      {
        name = "plugin-git";
        src = plugin-git.src;
      }
    ];
  };

}
