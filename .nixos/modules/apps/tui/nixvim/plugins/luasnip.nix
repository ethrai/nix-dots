{ pkgs, ... }: {
  programs.nixvim.plugins = {
    friendly-snippets.enable = true;

    luasnip = {
      enable = true;
      fromVscode = [{
        lazyLoad = true;
        paths = "${pkgs.vimPlugins.friendly-snippets}";
      }];
    };

  };
}
