{ lib, ... }: {
  imports = [
    ./telescope.nix
    ./lsp.nix
    ./lualine.nix
    ./floaterm.nix
    ./treesitter.nix
    ./treesitter-context.nix
    # ./ts-textobjects.nix
    ./md-preview.nix
    ./neo-tree.nix
    ./none-ls.nix
    ./supermaven.nix
    ./leap.nix
  ];
  stylix.targets.nixvim.enable = false;
  programs.nixvim = {
    colorschemes.base16 = {
      enable = true;
      colorscheme = "classic-dark";
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
