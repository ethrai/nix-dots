{
  programs.nixvim = {
    keymaps = [{
      mode = "n";
      key = "<leader>a";
      action = "<cmd> Lspsaga code_action<CR>";
    }];

    plugins.lspkind = {
      enable = true;
      cmp = {
        enable = true;
        menu = {
          nvim_lsp = "[LSP]";
          nvim_lua = "[api]";
          path = "[path]";
          luasnip = "[snip]";
          buffer = "[buffer]";
          neorg = "[neorg]";
        };
      };
      extraOptions = {
        maxwidth = 50;
        ellipsis_char = "...";
      };
    };
  };
}
