{
  programs.nixvim = {
    colorschemes.rose-pine = {
      enable = true;
      settings = {
        dark_variant = "moon";
        dim_inactive_windows = true;
        enable = {
          legacy_highlights = false;
          migrations = true;
          terminal = false;
        };
        extend_background_behind_borders = true;
        highlight_groups = { };
        styles = {
          bold = true;
          italic = false;
          transparency = false;
        };
        variant = "auto";
      };
    };
  };
}
