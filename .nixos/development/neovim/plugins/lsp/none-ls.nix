{
  programs.nixvim.plugins.lsp-format.enable = true;
  programs.nixvim.plugins.none-ls = {
    enable = true;

    sources.formatting = {
      gofumpt.enable = true;
      goimports.enable = true;
      goimports_reviser.enable = true;
      golines.enable = true;
      nixfmt.enable = true;
    };

  };
}
