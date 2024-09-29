{
  programs.nixvim = {
    plugins.lsp-format.enable = true;
    plugins.none-ls = {
      enableLspFormat = true;
      settings = { updateInInsert = false; };
      enable = true;
      sources = {
        diagnostics = {
          checkmake.enable = true;
          dotenv_linter.enable = true;
        };
        formatting = {
          shfmt.enable = true;
          google_java_format.enable = true;
        };
      };
    };
  };
}
