{
  programs.nixvim = {
    plugins.auto-session = {
      enable = true;
      autoRestore.enabled = true;
      autoSave.enabled = true;
    };
  };
}
