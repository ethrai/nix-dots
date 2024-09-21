{
  programs.eza = {
    enable = true;
    icons = true;
    git = true;
    extraOptions = [ "--group-directories-first" "-h"];
    enableZshIntegration = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
  };
}
