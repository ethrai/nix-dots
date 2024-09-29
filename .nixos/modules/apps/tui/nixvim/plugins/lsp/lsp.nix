{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        keymaps = { silent = true; };
      };
    };
  };
}
