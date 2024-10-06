{
  programs.nixvim.plugins = {
    lsp.servers.gopls.enable = true;
    # lsp.servers.golangci-lint-ls = {
    #   enable = true;
    #   autostart = false;
    # };
    none-ls = {
      enable = true;
      sources = {
        code_actions = {
          gomodifytags.enable = true;
          impl.enable = true;
        };
        diagnostics = {
          checkmake.enable = true;
          golangci_lint.enable = true;
        };
        formatting = {
          gofumpt.enable = true;
          goimports.enable = true;
          goimports_reviser.enable = true;
          golines.enable = true;
        };
      };
    };
  };
}
