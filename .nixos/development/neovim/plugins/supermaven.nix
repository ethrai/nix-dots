{ pkgs, ... }: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [{
      plugin = supermaven-nvim;
      config = ''
        lua << EOF
        require("supermaven-nvim").setup {
          keymaps = {
            accept_suggestion = "<C-f>",
            clear_suggestion = "<C-n>",
          },
        }
        EOF
      '';
    }];
  };
}
