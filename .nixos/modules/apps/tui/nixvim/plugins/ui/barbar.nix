{
  programs.nixvim = {
    plugins.barbar = {
      enable = true;
      settings = {
        animation = false;
        maximum_length = 25;
        minimum_length = 10;
        exclude_ft = [ "oil" "qf" "neo-tree" ];
        clickable = false;
        exclude_name = [ "UnicodeTable.txt" ];
        highlight_alternate = true;
        icons = {
          button = false;
          separator_at_end = false;
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "tp";
        action = "<cmd>BufferPick<cr>";
      }
      {
        mode = "n";
        key = "tl";
        action = "<cmd>BufferNext<cr>";
      }
      {
        mode = "n";
        key = "th";
        action = "<cmd>BufferPrevious<cr>";
      }
      {
        mode = "n";
        key = "tq";
        action = "<cmd>BufferDelete<cr>";
      }
      {
        mode = "n";
        key = "td";
        action = "<cmd>BufferPickDelete<cr>";
      }
      {
        mode = "n";
        key = "tr";
        action = "<cmd>BufferRestore<cr>";
      }
      {
        mode = "n";
        key = "ta";
        action = "<cmd>BufferCloseAllButCurrent<cr>";
      }
      {
        mode = "n";
        key = "<A-1>";
        action = "<cmd>BufferGoto 1<cr>";
      }
      {
        mode = "n";
        key = "<A-2>";
        action = "<cmd>BufferGoto 2<cr>";
      }
      {
        mode = "n";
        key = "<A-3>";
        action = "<cmd>BufferGoto 3<cr>";
      }
      {
        mode = "n";
        key = "<A-4>";
        action = "<cmd>BufferGoto 4<cr>";
      }
      {
        mode = "n";
        key = "<A-5>";
        action = "<cmd>BufferGoto 5<cr>";
      }
      {
        mode = "n";
        key = "<A-6>";
        action = "<cmd>BufferGoto 6<cr>";
      }
      {
        mode = "n";
        key = "<A-7>";
        action = "<cmd>BufferGoto 7<cr>";
      }
      {
        mode = "n";
        key = "<A-8>";
        action = "<cmd>BufferGoto 8<cr>";
      }
      {
        mode = "n";
        key = "<A-9>";
        action = "<cmd>BufferGoto 9<cr>";
      }
    ];
  };
}
