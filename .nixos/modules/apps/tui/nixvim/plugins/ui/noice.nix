{
  programs.nixvim.plugins.noice = {
    enable = true;
    messages = {
      enabled = true;
      view = "notify";
    };
    lsp = {
      override = {
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
        "vim.lsp.util.stylize_markdown" = true;
        "cmp.entry.get_documentation" = true;
        "command_palette" = false;
      };
      signature.enabled = true;
      progress.enabled = false;
    };
    popupmenu = {
      enabled = true;
      backend = "cmp";
    };
    presets = {
      bottom_search = true;
      command_palette = false;
      inc_rename = false;
      long_message_to_split = false;
    };
    notify = { enabled = true; };
    cmdline = { enabled = true; };
  };
}
