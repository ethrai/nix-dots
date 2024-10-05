{
  programs.nixvim = {
    plugins.neo-tree = {
      enable = true;
      autoCleanAfterSessionRestore = true;
      closeIfLastWindow = false;
      popupBorderStyle = "solid";
      window = { width = 35; };
    };
    keymaps = [{
      mode = [ "n" ];
      key = "<leader>n";
      action = "<cmd>Neotree float<cr>";
    }];
  };
}
