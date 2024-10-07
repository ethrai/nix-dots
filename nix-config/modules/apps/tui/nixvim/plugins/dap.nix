{
  programs.nixvim = {
    plugins.dap = {
      adapters = { };
      extensions = {
        dap-go = { enable = true; };
        dap-ui = { enable = true; };
        dap-virtual-text = { enable = true; };
      };
    };
  };
}
