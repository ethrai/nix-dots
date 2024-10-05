{
  programs.nixvim = {
    autoGroups.highlight_yank.clear = true;
    autoCmd = [
      {
        event = "TextYankPost";
        group = "highlight_yank";
        command =
          "silent! lua vim.highlight.on_yank{higroup='Search', timeout=200}";
      }
      {
        event = [ "BufNewFile" "BufRead" ];
        pattern = "*.asm";
        command = "setfiletype nasm";
      }
    ];
  };
}
