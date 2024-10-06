{ pkgs, config, ... }: {
  stylix.targets.tmux.enable = false;
  programs.tmux = {
    enable = true;
    historyLimit = 100000;
    terminal = "screen-256color";
    sensibleOnTop = true;
    keyMode = "vi";
    escapeTime = 0;
    baseIndex = 1;
    clock24 = true;
    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.resurrect;
        extraConfig = ''

          set -g @resurrect-strategy-nvim 'session'
          set -g @resurrect-strategy-vim 'session'
          set -g @resurrect-strategy-nvim 'session'

          set -g @resurrect-save 'S'
          set -g @resurrect-restore 'R'
        '';
      }
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
          set -g @continuum-save-interval '15'
        '';
      }
      { plugin = tmuxPlugins.vim-tmux-navigator; }
      { plugin = tmuxPlugins.jump; }
      {
        plugin = tmuxPlugins.session-wizard;
        extraConfig = ''
          set -g @session-wizard 't'
        '';
      }
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavor 'frappe'
          set -g @catppuccin_window_right_separator "█ "
          set -g @catppuccin_window_number_position "right"
          set -g @catppuccin_window_middle_separator " | "

          set -g @catppuccin_window_default_fill "none"

          set -g @catppuccin_window_current_fill "all"

          set -g @catppuccin_status_modules_left "session"
          set -g @catppuccin_status_modules_right "application user host"
          set -g @catppuccin_status_left_separator "█"
          set -g @catppuccin_status_right_separator "█ "
        '';
      }
    ];
    extraConfig = ''
      # Status line settings
      set-option -g status-position top

      set -g status-bg default
      set -g status-style bg=default
      setw -g window-status-current-style fg=red
      set -g status-left-length 30 # could be any number


      set -g default-terminal "$TERM"
      set -ag terminal-overrides ",$TERM:Tc"

      set -g mouse on


      unbind C-b
      # bind C-a send-prefix set -g prefix C-a
      set -g prefix M-a
      bind M-a send-prefix

      bind-key x kill-pane

      # Pane resizing
      bind -n M-z resize-pane -Z # zoom
      bind -r H resize-pane -L 2
      bind -r J resize-pane -D 2
      bind -r K resize-pane -U 2
      bind -r L resize-pane -R 2

      bind r source-file "${config.home.homeDirectory}/.config/tmux/tmux.conf"

      # Shift Alt vim keys to switch windows
      bind -n M-H previous-window
      bind -n M-L next-window

      set -g base-index 1           # start windows numbering at 1
      setw -g pane-base-index 1     # make pane numbering consistent with windows

      bind 'h' split-window -v -c "#{pane_current_path}"
      bind 'v' split-window -h -c "#{pane_current_path}"

      set-window-option -g mode-keys vi

      bind Enter copy-mode # enter copy mode

      bind -T copy-mode-vi v send -X begin-selection
      bind -T copy-mode-vi C-v send -X rectangle-toggle
      bind -T copy-mode-vi y send -X copy-selection-and-cancel
      bind -T copy-mode-vi Escape send -X cancel
      bind -T copy-mode-vi H send -X start-of-line
      bind -T copy-mode-vi L send -X end-of-line

    '';
  };
}
