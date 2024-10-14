{
  programs.nixvim.plugins = {
    lsp.servers.gopls.enable = true;
    lsp.servers.golangci_lint_ls = {
      enable = true;
      autostart = false;
    };
    none-ls = {
      enable = true;
      sources = {
        code_actions = {
          gomodifytags.enable = true;
          impl.enable = true;
        };
        diagnostics = {
          checkmake.enable = true;
          # golangci_lint.enable = false;
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
