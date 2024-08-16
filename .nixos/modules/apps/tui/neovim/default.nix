{ inputs, pkgs, ... }: {
  imports = [
    # inputs.nixvim.nixosModules.nixvim
    inputs.nixvim.homeManagerModules.nixvim
    ./options.nix
    ./keymaps.nix
    ./plugins
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    performance = {
      combinePlugins = {
        enable = true;
        standalonePlugins = [ "hmts.nvim" "nvim-treesitter" ];
      };
      byteCompileLua.enable = true;
    };

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
  # TODO: where to put this crap?
  home.packages = with pkgs; [
    bash-language-server
    shfmt
    shellcheck

    go
    gopls
    gomodifytags
    golangci-lint
    golangci-lint-langserver
    gotests
    gofumpt
    golines
  ];
}
