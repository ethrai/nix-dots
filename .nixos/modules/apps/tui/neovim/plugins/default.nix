{ lib, ... }: {
  imports = [ ./treesitter ./lsp ./ui ./util ./completion ];
  stylix.targets.nixvim.enable = false;
  programs.nixvim = {

    colorschemes.catppuccin = {
      enable = true;
      settings = {
        integrations = {
          cmp = true;
          gitsigns = true;
          notify = true;
          treesitter = true;
          telescope = { enabled = true; };
          nvim_surround = true;
          noice = true;
          neotree = true;
          lsp_saga = true;
          leap = true;
          indent_blankline = {
            enabled = true;
            scope_color =
              "blue"; # catppuccin color (eg. `lavender`) Default: text
            colored_indent_levels = true;
          };
          harpoon = true;
        };

        term_colors = true;
        no_italic = true;
        dim_inactive = { enabled = false; };

        flavour = "mocha";
      };
    };
    plugins = {

      surround.enable = true;

      gitsigns = {
        enable = true;
        settings.signs = {
          add.text = "+";
          change.text = "~";
        };
      };

      nvim-autopairs.enable = true;

      nvim-colorizer = {
        enable = true;
        userDefaultOptions.names = false;
      };

      trim = {
        enable = true;
        settings = {
          highlight = false;
          ft_blocklist =
            [ "checkhealth" "floaterm" "lspinfo" "neo-tree" "TelescopePrompt" ];
        };
      };
    };
  };
}
