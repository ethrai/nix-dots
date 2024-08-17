{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;

      keymaps = {
        # Find files using Telescope command-line sugar.
        "<leader>ff" = "find_files";
        "<leader>fw" = "live_grep";
        "<leader>b" = "buffers";
        "<leader>fh" = "help_tags";
        "<leader>fd" = "diagnostics";
        "<leader>f<CR>" = "resume";

        # FZF like bindings
        "<leader>fg" = "git_files";
        "<leader>p" = "oldfiles";

        "<leader>fs" = "lsp_document_symbols";
        "<leader>fa" = "lsp_dynamic_workspace_symbols";
        "gr" = "lsp_references";

      };

      settings.defaults = {
        layout_config = {
          horizontal.width = 0.95;
          preview_width = 0.45;
        };
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        set_env.COLORTERM = "truecolor";
      };
    };
  };
}
