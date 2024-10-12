{
  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
      settings = {
        light_style = "day";
        lualine_bold = false;
        style = "storm";
        styles = {
          comments = { italic = true; };
          keywords = { italic = false; };
        };
      };
    };
  };
}
