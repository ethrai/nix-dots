{
  programs.nixvim = {
    plugins.notify = {
      enable = true;
      fps = 30;
      render = "minimal";
      timeout = 2000;
      topDown = true;
      stages = "static";
      level = 3;
      maxWidth = 30;
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
