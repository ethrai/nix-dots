{
  programs.nixvim.plugins.lspsaga = {
    enable = true;
    lightbulb = { enable = false; };
    implement = {
      enable = true;
      virtualText = true;
    };
  };
}
