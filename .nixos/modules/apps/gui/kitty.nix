{
  programs.kitty = {
    enable = true;
    settings = {
      cursor_shape = "block";
      cursor_shape_unfocused = "hollow";
      cursor_blink_interval = 0;
      enable_audio_bell = "no";
      shell_integration = "no_cursor";
    };
    keybindings = {
      kitty_mod = "ctrl+shift";
      "kitty_mod+enter" = "launch --cwd=current";

      "f1" = "next_layout";
      "kitty_mod+a" = "set_tab_title";
      "alt+`" = "select_tab";

      # "ctrl+shift+right" = "next_tab";
      # "shift+cmd+]" = "next_tab 🍎";
      # "ctrl+tab" = "next_tab";

      "kitty_mod+l" = "next_tab";
      "kitty_mod+h" = "previous_tab";

      # "ctrl+h" = "neighboring_window left";
      # "ctrl+l" = "neighboring_window right";
      # "ctrl+j" = "neighboring_window down";
      # "ctrl+k" = "neighboring_window up";

      "kitty_mod+t" = "new_tab_with_cwd";
      "kitty_mod+0" = "goto_tab 0";
      "kitty_mod+1" = "goto_tab 1";
      "kitty_mod+2" = "goto_tab 2";
      "kitty_mod+3" = "goto_tab 3";
      "kitty_mod+4" = "goto_tab 4";
      "kitty_mod+5" = "goto_tab 5";
      "kitty_mod+6" = "goto_tab 6";
      "kitty_mod+7" = "goto_tab 7";
      "kitty_mod+8" = "goto_tab 8";
      "kitty_mod+9" = "goto_tab 9";

      # Splits
      "alt+1" = "split_window -v";
      "alt+2" = "split_window -h";
      # Windows
      "alt+s" = "toggle_layout stack";

    };
  };
}
