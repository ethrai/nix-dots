{
  programs.nixvim.plugins.lspkind = {
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
    symbolMap = { Copilot = ""; };
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
}
