{ inputs, ... }: {
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];
  stylix.targets.nixvim.enable = false;
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    performance = { byteCompileLua.enable = true; };
    viAlias = true;
    vimAlias = true;
    luaLoader.enable = true;
  };
}
