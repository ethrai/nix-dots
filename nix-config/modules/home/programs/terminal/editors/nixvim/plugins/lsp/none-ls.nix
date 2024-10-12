{
  programs.nixvim = {
    plugins.none-ls = {
      enable = true;
      sources = {
        diagnostics = {
          checkmake.enable = true;
          dotenv_linter.enable = true;
        };
        formatting = {
          shfmt.enable = true;
        };
      };
    };

    keymaps = [{
      mode = [ "n" "v" ];
      key = "<leader>fw";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }];
  };

}
