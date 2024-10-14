{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        keymaps = {
          silent = true;
          lspBuf = {
            K = "hover";
            "<leader>rn" = "rename";
            "<leader>a" = "code_action";
          };
          diagnostic = {
            "<leader>j" = "goto_next";
            "<leader>k" = "goto_prev";
            "<leader>cd" = {
              action = "open_float";
              desc = "Line Diagnostics";
            };
          };
        };
        servers = {
          marksman.enable = true; # Markdown
          dockerls.enable = true; # Docker
          bashls.enable = true; # Bash
          yamlls.enable = true; # YAML
          lua_ls = { # Lua
            enable = true;
            settings.telemetry.enable = false;
          };
        };
      };
    };
    extraConfigLua = ''
      vim.lsp.handlers['textDocument/hover'] = function(_, result, ctx, config)
        config = config or {}
        config.focus_id = ctx.method
        if not (result and result.contents) then
          return
        end
        local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
        markdown_lines = vim.lsp.util.trim_empty_lines(markdown_lines)
        if vim.tbl_isempty(markdown_lines) then
          return
        end
        return vim.lsp.util.open_floating_preview(markdown_lines, 'markdown', config)
      end
    '';
  };

}
