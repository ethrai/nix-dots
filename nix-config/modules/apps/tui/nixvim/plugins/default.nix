{
  imports = [
    # Completion
    ./auto-session.nix
    ./cmp.nix
    ./lspkind.nix
    ./luasnip.nix
    ./utils.nix

    # Syntax
    ./treesitter.nix

    ./lsp

    ./ui

    ./navigation

    ./themes/rosepine.nix
  ];
}
