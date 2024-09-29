{
  programs.nixvim.plugins = {
    lsp.servers.nil-ls.enable = true;
    none-ls = {
      sources = {
        code_actions.statix.enable = true;
        formatting.nixfmt.enable = true;
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
        };
      };
    };
  };
}
