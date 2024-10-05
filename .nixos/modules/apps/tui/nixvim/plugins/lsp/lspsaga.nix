{
  programs.nixvim = {
    # Using lspsaga only for code action.
    plugins.lspsaga = {
      enable = false;
      implement.enable = false;
      lightbulb.enable = false;
      beacon.enable = false;
      codeAction = {
        showServerName = true;
        extendGitSigns = true;
      };
      symbolInWinbar = { enable = false; };
    };

    keymaps = [{
      mode = [ "n" ];
      key = "<leader>a";
      action = "<cmd>Lspsaga code_action<CR>";
      options = { silent = true; };
    }
    # {
    #   mode = [ "n" ];
    #   key = "<leader>j";
    #   action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
    #   options = { silent = true; };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "<leader>k";
    #   action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
    #   options = { silent = true; };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "<F2>";
    #   action = "<cmd>Lspsaga rename<cr>";
    #   options = { silent = true; };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "K";
    #   action = "<cmd>Lspsaga hover_doc<cr>";
    #   options = { silent = true; };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "<leader>cd";
    #   action = "<cmd>Lspsaga show_cursor_diagnostics<cr>";
    #   options = { silent = true; };
    # }
      ];
  };

}
