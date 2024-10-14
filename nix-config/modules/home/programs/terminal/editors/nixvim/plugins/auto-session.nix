{
  programs.nixvim = {
    plugins.auto-session = {
      enable = true;
      settings = {
        auto_restore = true;
        auto_save = true;
      };
    };
  };
}
