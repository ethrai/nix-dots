{
  programs.nixvim = {
    plugins.lsp-signature = {
          enable = true;
      settings = { handler_opts = { border = "single"; }; };
    };
  };
}
