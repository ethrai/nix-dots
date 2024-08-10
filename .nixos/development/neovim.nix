{ pkgs }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      # Tools
      goimpl
      gomodifytags
      iferr
      # Language servers
      golangci-lint-langserver
      pyright
      # linters and formatters
      golangci-lint
      gofumpt
      golines
      goimports
      ruff
      black

      shellsheck
      shfmt
    ];
  };
}
