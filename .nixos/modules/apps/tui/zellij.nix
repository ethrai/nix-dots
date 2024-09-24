{ lib, ... }: {
  stylix.targets.zellij.enable = true;
  programs.zellij = {
    enable = true;
    enableZshIntegration = false;
    settings = {
      simplified_ui = true;
      pane_frames = false;
      theme = lib.mkDefault "tokyo-night";
      default_layout = "compact";
      ui = { pane_frames = { rounded_corners = true; }; };
    };
  };
}
