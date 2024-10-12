{
  programs.nixvim = {
    globals.mapleader = " ";
    keymaps = [
      {
        mode = [ "n" ];
        key = "Y";
        action = "y$";
        options.silent = true;
      }
      {
        mode = [ "n" ];
        key = ";";
        action = ":";
      }
      {
        mode = [ "n" ];
        key = "<leader>w";
        action = "<cmd>w<cr>";
        options.silent = true;
      }
      {
        mode = [ "n" ];
        key = "<leader>W";
        action = "<cmd>W<cr>";
        options.silent = true;
      }
      {
        mode = [ "n" ];
        key = "L";
        action = "$";
        options.silent = true;
      }
      {
        mode = [ "n" ];
        key = "H";
        action = "^";
        options.silent = true;
      }
      {
        mode = [ "v" ];
        key = ">";
        action = ">gv";
        options.silent = true;
      }
      {
        mode = [ "v" ];
        key = "<";
        action = "<gv";
        options.silent = true;
      }
      {
        mode = [ "n" "x" ];
        key = "j";
        action = "v:count == 0 ? 'gj' : 'j'";
        options = {
          expr = true;
          silent = true;
        };
      }
      {
        mode = [ "n" "x" ];
        key = "<Down>";
        action = "v:count == 0 ? 'gj' : 'j'";
        options = {
          expr = true;
          silent = true;
        };
      }
      {
        mode = [ "n" "x" ];
        key = "k";
        action = "v:count == 0 ? 'gk' : 'k'";
        options = {
          expr = true;
          silent = true;
        };
      }
      {
        mode = [ "n" "x" ];
        key = "<Up>";
        action = "v:count == 0 ? 'gk' : 'k'";
        options = {
          expr = true;
          silent = true;
        };
      }
      # Windows
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
        options = {
          silent = true;
          desc = "Go to Left Window";
          remap = true;
        };
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
        options = {
          silent = true;
          desc = "Go to Lower Window";
          remap = true;

        };
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
        options = {
          silent = true;
          desc = "Go to Upper Window";
          remap = true;

        };
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
        options = {
          silent = true;

          desc = "Go to Right Window";
          remap = true;

        };
      }
      {
        mode = "n";
        key = "<C-Up>";
        action = "<cmd>resize +2<cr>";
        options = {
          silent = true;
          desc = "Increase Window Height";
        };
      }
      {
        mode = "n";
        key = "<C-Down>";
        action = "<cmd>resize -2<cr>";
        options = { desc = "Decrease Window Height"; };
      }
      {
        mode = "n";
        key = "<C-Left>";
        action = "<cmd>vertical resize -2<cr>";
        options = { desc = "Decrease Window Width"; };
      }
      {
        mode = "n";
        key = "<C-Right>";
        action = "<cmd>vertical resize +2<cr>";
        options = { desc = "Increase Window Width"; };
      }
      {
        mode = [ "i" "n" ];
        key = "<esc>";
        action = "<cmd>noh<cr><esc>";
        options = { desc = "Escape and Clear hlsearch"; };
      }
      # Search
      {
        mode = "n";
        key = "n";
        action = "'Nn'[v:searchforward].'zv'";

        options = {
          expr = true;
          desc = "Next Search Result";
        };
      }
      {
        mode = "x";
        key = "n";
        action = "'Nn'[v:searchforward]";

        options = {
          expr = true;
          desc = "Next Search Result";
        };
      }
      {
        mode = "o";
        key = "n";
        action = "'Nn'[v:searchforward]";

        options = {
          expr = true;
          desc = "Next Search Result";
        };
      }
      {
        mode = "n";
        key = "N";
        action = "'nN'[v:searchforward].'zv'";

        options = {
          expr = true;
          desc = "Prev Search Result";
        };
      }
      {
        mode = "x";
        key = "N";
        action = "'nN'[v:searchforward]";

        options = {
          expr = true;
          desc = "Prev Search Result";
        };
      }
      {
        mode = "o";
        key = "N";
        action = "'nN'[v:searchforward]";
        options = {
          expr = true;
          desc = "Prev Search Result";
        };
      }
    ];
  };
}
