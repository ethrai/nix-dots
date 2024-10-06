{
  programs.nixvim.plugins.lualine = {
    enable = true;
    settings = {
      options = {
        disabled_filetypes = {
          __unkeyed-1 = "startify";
          __unkeyed-2 = "neo-tree";
          statusline = [ "dap-repl" ];
        };
        globalstatus = true;
      };
      refresh = { statusline = 250; };
      sections = {

        lualine_a = [ "mode" ];

        lualine_b = [ "branch" ];
        lualine_c = [ "filename" "diff" "navic" ];
        lualine_x = [ "diagnostics" "encoding" "fileformat" "filetype" ];
      };

    };

  };
}
