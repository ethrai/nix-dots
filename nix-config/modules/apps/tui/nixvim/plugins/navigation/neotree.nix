{
  programs.nixvim = {
    plugins.neo-tree = {
      enable = true;
      autoCleanAfterSessionRestore = true;
      closeIfLastWindow = false;
      window = { width = 35; };
    };
    keymaps = [{
      mode = [ "n" ];
      key = "<leader>n";
      action = "<cmd>Neotree float<cr>";
    }];
  };
}
