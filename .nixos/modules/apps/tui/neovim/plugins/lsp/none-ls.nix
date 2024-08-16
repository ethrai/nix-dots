{
  programs.nixvim.plugins.lsp-format.enable = true;
  programs.nixvim.plugins.none-ls = {
    enable = true;

    sources.code_actions = {
      gomodifytags.enable = true;
      impl.enable = true;
      # refactoring.enable = true;
    };

    sources.diagnostics = {
      golangci_lint.enable = true;
      checkmake.enable = true;
      dotenv_linter.enable = true;
    };

    sources.formatting = {
      gofumpt.enable = true;
      goimports.enable = true;
      goimports_reviser.enable = true;
      golines.enable = true;
      nixfmt.enable = true;
      shfmt.enable = true;
    };

  };
}
