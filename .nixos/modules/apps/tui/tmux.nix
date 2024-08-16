{ pkgs, config, ... }:

{

  stylix.targets.tmux.enable = true;
  programs.tmux = {
    enable = true;
    package = pkgs.tmux;
    historyLimit = 100000;
    keyMode = "vi";
    escapeTime = 0;
    baseIndex = 1;
    clock24 = true;
    plugins = with pkgs; [
      { plugin = tmuxPlugins.sensible; }
      { plugin = tmuxPlugins.vim-tmux-navigator; }
      {
        plugin = tmuxPlugins.tmux-fzf;
        extraConfig = ''
          TMUX_FZF_OPTIONS="-p -w 90% -h 50% -m"
          TMUX_FZF_LAUNCH_KEY="a"
          TMUX_FZF_ORDER="session|window|pane"

        '';
      }
      { plugin = tmuxPlugins.jump; }
      {
        plugin = tmuxPlugins.resurrect;
        extraConfig = ''
          set -g @resurrect-strategy-vim 'session'
          set -g @resurrect-strategy-nvim 'session'


          set -g @resurrect-capture-pane-contents 'on'
        '';
      }
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-save-interval '30'
        '';
      }
    ];
    extraConfig = ''
      set -g default-terminal "$TERM"
      set -ag terminal-overrides ",$TERM:Tc"

      set -g mouse on

      set-option -g status-position top

      unbind C-b
      # set -g prefix C-a
      # bind C-a send-prefix
      set -g prefix M-a
      bind M-a send-prefix

      bind-key x kill-pane


      # Session


      # Pane resizing
      bind -n M-j resize-pane -Z # zoom
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
