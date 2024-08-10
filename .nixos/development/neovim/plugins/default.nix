{ lib, ... }: {
  imports = [
    ./telescope.nix
    ./lsp.nix
    ./lualine.nix
    ./floaterm.nix
    ./treesitter.nix
    ./treesitter-context.nix
    ./md-preview.nix
    ./neo-tree.nix
    ./none-ls.nix
  ];
  stylix.targets.nixvim.enable = false;
  programs.nixvim = {
    colorschemes.base16 = {
      enable = true;
      colorscheme = "classic-dark";
    };

    plugins = {

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
          highlight = true;
          ft_blocklist =
            [ "checkhealth" "floaterm" "lspinfo" "neo-tree" "TelescopePrompt" ];
        };
      };
    };
  };
}
