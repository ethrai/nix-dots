{ config, ... }: {
  programs.nixvim = {
    colorschemes.base16 = {
      enable = true;
      settings = { illuminate = true; };
      colorscheme = "tomorrow-night";
    };
  };
}
