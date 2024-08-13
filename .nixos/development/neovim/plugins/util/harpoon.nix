{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymapsSilent = true;
    keymaps = {
      addFile = "<leader>ha";
      toggleQuickMenu = "<C-e>";
      navFile = {
        "1" = "<leader>hh";
        "2" = "<leader>hj";
        "3" = "<leader>hk";
        "4" = "<leader>hl";
      };
    };
  };
}
