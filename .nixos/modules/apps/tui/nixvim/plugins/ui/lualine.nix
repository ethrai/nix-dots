{
  programs.nixvim.plugins.lualine = {
    enable = true;
    settings = {
      globalstatus = true;
      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [ "branch" ];
        lualine_c = [
          "filename"
          "diff"
        ];

        lualine_x = [
          "diagnostics"

          "encoding"
          "filetype"
        ];
      };
    };
  };
}
