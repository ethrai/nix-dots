{
  programs.nixvim = {
    plugins.lsp-signature = {
      enable = false;
      settings = {
        toggle_key = "<M-x>";
        hint_enable = false;
        max_width = 80;
      };
    };
  };
}
