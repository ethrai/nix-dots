{
  programs.nixvim = {
    plugins.navic = {
      enable = true;

      settings = {
        depth_limit = 3;
        lsp = {
          auto_attach = true;
          preference = [ "gopls" "nil-ls" ];
        };
      };
    };
  };
}
