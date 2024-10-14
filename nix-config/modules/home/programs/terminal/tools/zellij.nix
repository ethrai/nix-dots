{ pkgs, ... }: {
  home.packages = [ pkgs.zellij ];
  home.file.".config/zellij/config.kdl".text = ''
    default_layout "compact"
    mouse_mode false
    pane_frames false
    simplified_ui true
    theme "tokyo-night-storm"
    ui {
    	pane_frames {
    		rounded_corners true
    	}
    }

    keybinds {
        normal clear-defaults=true  {
            // tmux
            bind "Alt a" { SwitchToMode "Tmux"; }
            bind "Alt h"  { MoveFocusOrTab "Left"; }
            bind "Alt l"  { MoveFocusOrTab "Right"; }
            unbind "Ctrl b"
            unbind "Ctrl q"
        }
       tmux clear-defaults=true {
              bind "Alt a" { Write 2; SwitchToMode "Normal"; }
              bind "Esc" { SwitchToMode "Normal"; }
              bind "g" { SwitchToMode "Locked"; }
              bind "p" { SwitchToMode "Pane"; }
              bind "t" { SwitchToMode "Tab"; }
              bind "n" { SwitchToMode "Resize"; }
              bind "h" { SwitchToMode "Move"; }
              bind "s" { SwitchToMode "Scroll"; }
              bind "o" { SwitchToMode "Session"; }
              bind "q" { Quit; }
          }
    }
    :
  '';
}
