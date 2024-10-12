{
  programs.nixvim = {
    diagnostics = {
      virtual_text = true;
      virtual_lines = false;
      underline = true;
      signs = true;
    };

    extraConfigLuaPre = ''
      vim.diagnostic.config({
          signs = {
              text = {
                  [vim.diagnostic.severity.ERROR] = " ",
                  [vim.diagnostic.severity.WARN] = " ",
                  [vim.diagnostic.severity.INFO] = " ",
                  [vim.diagnostic.severity.HINT] = " ",
              },
          }
      })
    '';

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts = {
      updatetime = 100; # Faster completion

      # Line numbers
      relativenumber = true; # Relative line numbers
      number = true; # Display the absolute line number of the current line
      hidden = true; # Keep closed buffer open in the background
      mouse = "a"; # Enable mouse control
      mousemodel = "extend"; # Mouse right-click extends the current selection
      conceallevel = 0; # Hide * and # markers when scrolling
      splitbelow = true; # A new window is put below the current one
      splitright = true; # A new window is put right of the current one

      swapfile = false; # Disable the swap file
      modeline = true; # Tags such as 'vim:ft=sh'
      modelines = 100; # Sets the type of modelines
      undofile = true; # Automatically save and restore undo history
      signcolumn = "yes";
      incsearch =
        true; # Incremental search: show match for partly typed search command
      ignorecase =
        true; # When the search query is lower-case, match both lower and upper-case
      #   patterns
      smartcase =
        true; # Override the 'ignorecase' option if the search pattern contains upper case characters
      scrolloff = 6; # Number of screen lines to show around the cursor
      cursorline = false; # Highlight the screen line of the cursor
      # colorcolumn = "80";
      cursorcolumn = false; # Highlight the screen column of the cursor
      laststatus = 3; # When to use a status line for the last window
      fileencoding = "utf-8"; # File-content encoding for the current buffer
      linebreak = true;
      termguicolors = true; # Enables 24-bit RGB color in the |TUI|
      spell = false; # Highlight spelling mistakes (local to window)
      wrap = false; # Prevent text from wrapping

      # Tab options
      expandtab =
        true; # Expand <Tab> to spaces in Insert mode (local to buffer)
      smarttab = true; # Insert appropriate number of spaces on tab
      smartindent = true; # Smart autoindenting on new lines.
      shiftwidth = 2; # Number of spaces to use for each step of (auto)indent

      tabstop = 2; # Number of spaces that a <Tab> in the file counts for

      textwidth = 80;

      # Folding
      foldenable = true;
      # foldmethod = "expr";
      # foldnestmax = 3;
      # foldexpr = "nvim_treesitter#foldexpr()";
      # fillchars = "fold:\\";
      # foldminlines = 1;
      foldlevel =
        99; # Folds with a level higher than this number will be closed
    };
  };
}
