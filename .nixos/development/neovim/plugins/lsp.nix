{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>k" = "goto_prev";
            "<leader>j" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<F2>" = "rename";

          };
        };

        servers = {
          clangd.enable = true;
          gopls.enable = true;
          golangci-lint-ls.enable = true;
          bashls.enable = true;
          cssls.enable = true;
          dockerls.enable = true;

          jsonls.enable = true;
          lua-ls.enable = true;
          marksman.enable = true;
          nixd.enable = true;

        };
      };
    };
  };
}
