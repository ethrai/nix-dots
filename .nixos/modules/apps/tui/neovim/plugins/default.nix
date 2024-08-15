{ lib, ... }: {
  imports = [ ./treesitter ./lsp ./ui ./util ./completion ];
  stylix.targets.nixvim.enable = false;
  programs.nixvim = {
    colorschemes.base16 = {
      enable = true;
      colorscheme = "classic-dark";
    };

    # colorschemes.kanagawa.enable = true;
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

      oil.enable = true;

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
