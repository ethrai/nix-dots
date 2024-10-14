{
  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
      settings = {
        light_style = "day";
        lualine_bold = true;
        style = "storm";
        transparent = false;
        styles = {
          comments = { italic = true; };
          keywords = { italic = false; };
          sidebars = "dark";
          floats = "dark";
        };
      };
    };
  };
}
