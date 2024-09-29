{
  programs.nixvim.plugins = {
    nix.enable = true;
    nix-develop.enable = true;
    lsp.servers.nil-ls.enable = true;
    none-ls = {
      sources = {
        formatting.nixfmt.enable = true;
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
        };
      };
    };
  };
}
