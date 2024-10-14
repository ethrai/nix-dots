{ pkgs, inputs, ... }: {
  imports = [ inputs.anyrun.homeManagerModules.default ];
  programs.anyrun = {
    enable = true;
    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
        dictionary
        rink
        shell
        symbols
        stdin
        translate
        websearch
      ];
      x.fraction = 0.5;
      y.absolute = 0;
      # Hide match and plugin info icons
      hideIcons = false;

      # ignore exclusive zones, i.e. Waybar
      ignoreExclusiveZones = false;

      # Layer shell layer: Background, Bottom, Top, Overlay
      layer = "overlay";

      # Hide the plugin info panel
      hidePluginInfo = false;

      # Close window when a click outside the main box is received
      closeOnClick = false;

      # Show search results immediately when Anyrun starts
      showResultsImmediately = false;

      # Limit amount of entries shown in total
      maxEntries = 10;
    };

    extraConfigFiles = {
      "applications.ron".text = ''
        Config(
          // Also show the Desktop Actions defined in the desktop files, e.g. "New Window" from LibreWolf
          desktop_actions: true,
          max_entries: 10,
          // The terminal used for running terminal based desktop entries, if left as `None` a static list of terminals is used
          // to determine what terminal to use.
          terminal: Some("kitty"),
        )
      '';

      "translate.ron".text = ''
        Config(
          prefix: ":tr",
          language_delimiter: ">",
          max_entries: 3,
        )
      '';

      "websearch.ron".text = ''
        Config(
          prefix: "?",
          engines: [DuckDuckGo]
        )
      '';
    };
  };
}
