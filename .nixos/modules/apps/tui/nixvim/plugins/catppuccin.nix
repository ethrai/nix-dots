{
  programs.nixvim = {
    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = "macchiato";
      settings.integrations = {
        cmp = true;
        gitsigns = true;
        notify = true;
        treesitter = true;
        indent_blankline.enabled = true;
        leap = true;
        lsp_saga = true;
        noice = true;
        dap = true;
        dap_ui = true;

        rainbow_delimiters = true;
        telescope = {
          enabled = true;
          style = "nvchad";
        };
        illuminate = {
          enabled = true;
          lsp = false;
        };
      };
    };
  };
}
