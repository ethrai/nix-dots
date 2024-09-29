{
  stylix.targets.foot.enable = true;
  programs.foot = {
    enable = false;
    settings = {
      main = { term = "xterm-256color"; };
      cursor = {
        style = "block";
        blink = "no";
      };
    };
  };
}
