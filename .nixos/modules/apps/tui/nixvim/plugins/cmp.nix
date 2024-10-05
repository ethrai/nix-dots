{
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          sources = [
            { name = "luasnip"; }
            { name = "path"; }
            { name = "nvim_lsp"; }
            { name = "buffer"; }
          ];
          mapping = {
            "<C-j>" = "cmp.mapping.select_next_item()";
            "<C-k>" = "cmp.mapping.select_prev_item()";
            "<C-Space>" = "cmp.mapping.complete()";
            "<CR>" = "cmp.mapping.confirm({ select = false })";
            "<C-l>" = ''
              cmp.mapping(function(fallback)
                    if require("luasnip").locally_jumpable(1) then
                      require("luasnip").jump(1)
                    else
                      fallback()
                    end
                  end, { "i", "s" })
            '';
            "<C-h>" = ''
              cmp.mapping(function(fallback)
                   if require("luasnip").jumpable(-1) then
                      require("luasnip").jump(-1)
                    else
                      fallback()
                    end
                  end, { "i", "s" })
            '';
          };
          snippet = {
            expand =
              "function(args) require('luasnip').lsp_expand(args.body) end";
          };
        };
      };
    };
  };
}
