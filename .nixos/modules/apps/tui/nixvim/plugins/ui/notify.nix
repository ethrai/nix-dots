{
  programs.nixvim = {
    plugins.notify = {
      enable = true;
      fps = 60;
      render = "default";
      timeout = 2500;
      topDown = true;
      stages = "static";
      maxWidth = 60;
      minimumWidth = 30;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>,";
        action = ''
          <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
        '';
        options = { desc = "Dismiss All Notifications"; };
      }
      {
        mode = "n";
        key = "<leader>fn";
        action = ''
          <cmd> lua require('telescope').extensions.notify.notify() <cr>
        '';
      }
    ];
  };

}
