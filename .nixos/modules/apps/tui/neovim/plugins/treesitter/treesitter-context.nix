{
  programs.nixvim.plugins.treesitter-context = {
    settings = {
      enable = true;
      line_numbers = true;
      max_lines = 3;
      min_window_height = 0;
      mode = "topline";
      multiline_threshold = 20;
      separator = "-";
      trim_scope = "inner";
      zindex = 20;
    };
  };
}
