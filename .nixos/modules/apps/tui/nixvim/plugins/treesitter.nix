{ pkgs, ... }: {
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      folding = true;
      settings = {
        highlight = {
          enable = true;
          disable = ''
            function(lang, bufnr)
              return vim.api.nvim_buf_line_count(bufnr) > 10000
            end
          '';
        };
        indent = {
          enable = true;
          disable = [ "go" ];
        };
        incremental_selection = { enable = true; };
      };
      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };

    plugins.treesitter-textobjects.enable = true;
  };
}
