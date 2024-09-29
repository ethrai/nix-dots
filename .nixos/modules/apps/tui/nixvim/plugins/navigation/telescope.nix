{
  programs.nixvim.plugins = {
    telescope = {
      enable = true;
      settings = {
        defaults = {
          file_ignore_patterns = [
            "^.git/"
            "^.mypy_cache/"
            "^__pycache__/"
            "^output/"
            "^data/"
            "%.ipynb"
            "^secrets/"
            "build/"
            "bin/"
          ];
          layout_strategy = "horizontal";
          layout_config = {
            horizontal = {
              prompt_position = "bottom";
              preview_width = 0.45;
            };
            width = 0.95;
            height = 0.75;
            vertical = { prompt_position = "bottom"; };
          };
          sorting_strategy = "ascending";
        };
      };
      keymaps = {
        "<leader><space>" = { action = "find_files"; };
        "<leader>/" = {
          action = "live_grep";
          options = { desc = "Grep (root dir)"; };
        };
        "<leader>fs" = {
          action = "lsp_document_symbols";
          options = { desc = "Grep (root dir)"; };
        };
        "<leader>fa" = {
          action = "lsp_workspace_symbols";
          options = { desc = "Grep (root dir)"; };
        };
        "<leader>fq" = {
          action = "lsp_dynamic_workspace_symbols";
          options = { desc = "Grep (root dir)"; };
        };
        "<leader>:" = {
          action = "command_history";
          options = { desc = "Command History"; };
        };
        "gr" = {
          action = "lsp_references";
          options = { desc = "Command History"; };
        };
        "gi" = {
          action = "lsp_implementations";
          options = { desc = "Command History"; };
        };
        "gd" = {
          action = "lsp_definitions";
          options = { desc = "Command History"; };
        };
        "gt" = {
          action = "lsp_type_definitions";
          options = { desc = "Command History"; };
        };
        "<leader>b" = {
          action = "buffers";
          options = { desc = "+buffer"; };
        };
        "<leader><CR>" = {
          action = "resume";
          options = { desc = "Resume"; };
        };
        "<leader>fg" = {
          action = "git_files";
          options = { desc = "Search git files"; };
        };
        "<leader>gc" = {
          action = "git_commits";
          options = { desc = "Commits"; };
        };
        "<leader>gs" = {
          action = "git_status";
          options = { desc = "Status"; };
        };

        "<leader>gb" = {
          action = "git_branches";
          options = { desc = "Branches"; };
        };
        "<leader>sb" = {
          action = "current_buffer_fuzzy_find";
          options = { desc = "Buffer"; };
        };
        "<leader>fd" = {
          action = "diagnostics";
          options = { desc = "Workspace diagnostics"; };
        };
      };
    };
  };
}
