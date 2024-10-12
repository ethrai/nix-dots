{
  programs.nixvim.plugins.noice = {
    enable = true;
    messages = {
      enabled = true;
      view = "notify";
    };
    lsp = {
      signature.enabled = true;
      progress.enabled = true;
    };
    presets = {
      lsp_doc_border = true;
      inc_rename = true;
      command_palette = true;
      long_message_to_split = true;
    };
    notify = { enabled = true; view = "notify"; };
    routes = [
      {
        filter = {
          event = "msg_show";
          kind = "";
          find = "written";
        };
        opts = {
          skip = true;
        };
      }
    ];
    cmdline = { enabled = true; };
  };
}
