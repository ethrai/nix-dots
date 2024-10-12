{ lib, pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      # shell = {
      #   program = "zellij";
      #   args = [ "attach" "nixos-config" ];
      # };
      "colors" = { "draw_bold_text_with_bright_colors" = true; };
      "cursor" = {
        "style" = "Block";
        "unfocused_hollow" = true;
        "vi_mode_style" = {
          "blinking" = "Off";
          "shape" = "Block";
        };
      };
      "env" = { "TERM" = "xterm-256color"; };
      "keyboard" = {
        "bindings" = [
          {
            "action" = "Paste";
            "key" = "V";
            "mods" = "Control|Shift";
          }
          {
            "action" = "Copy";
            "key" = "C";
            "mods" = "Control|Shift";
          }
          {
            "action" = "PasteSelection";
            "key" = "Insert";
            "mods" = "Shift";
          }
          {
            "action" = "ResetFontSize";
            "key" = "Key0";
            "mods" = "Control";
          }
          {
            "action" = "IncreaseFontSize";
            "key" = "Equals";
            "mods" = "Control";
          }
          {
            "action" = "IncreaseFontSize";
            "key" = "Plus";
            "mods" = "Control";
          }
          {
            "action" = "DecreaseFontSize";
            "key" = "Minus";
            "mods" = "Control";
          }
          {
            "action" = "Paste";
            "key" = "Paste";
            "mods" = "None";
          }
          {
            "action" = "Copy";
            "key" = "Copy";
            "mods" = "None";
          }
          {
            "action" = "ClearLogNotice";
            "key" = "L";
            "mods" = "Control";
          }
          {
            "chars" = "u{c}";
            "key" = "L";
            "mods" = "Control";
          }
          {
            "action" = "ScrollPageUp";
            "key" = "PageUp";
            "mode" = "~Alt";
            "mods" = "None";
          }
          {
            "action" = "ScrollPageDown";
            "key" = "PageDown";
            "mode" = "~Alt";
            "mods" = "None";
          }
          {
            "action" = "ScrollToTop";
            "key" = "Home";
            "mode" = "~Alt";
            "mods" = "Shift";
          }
          {
            "action" = "ScrollToBottom";
            "key" = "End";
            "mode" = "~Alt";
            "mods" = "Shift";
          }
        ];
      };
      "scrolling" = { "history" = 5000; };
      "window" = {
        "class" = {
          "general" = "Alacritty";
          "instance" = "Alacritty";
        };
        "decorations" = "none";
        "dynamic_padding" = true;
        "padding" = {
          "x" = 0;
          "y" = 0;
        };
        "startup_mode" = "Maximized";
        "title" = "Alacritty";
      };
    };
  };
}
