{
  programs.nixvim = {
    plugins.navic = {
      enable = true;

      settings = {
        depth_limit = 4;
        lsp = {
          auto_attach = true;
          preference = [ "gopls" "nil-ls" ];
        };
      };
    };
  };
}
