{ config, lib, ... }: {
  stylix.targets.dunst.enable = true;
  services.dunst = {
    enable = true;

    # For settings: man dunst.5
    # also available here: https://github.com/dunst-project/dunst/blob/master/docs/dunst.5.pod
    settings = with config.lib.stylix.colors; {
      ###################
      # Global settings #
      ###################

      global = {
        # dynamic width from 0 to 300
        # width = (0, 300)
        # constant width of 300
        width = "(0, 800)";

        # The maximum height of a single notification, excluding the frame.
        height = 300;

        # geometry = "300x10-10-50";
        origin = "bottom-right";

        # Offset from the origin
        offset = "10x30";

        # Horizontal padding.
        horizontal_padding = 10;

        # Defines color of the frame around the notification window.
        frame_color = "#${base01}";

        # Set by stylix
        font = lib.mkForce "${config.stylix.fonts.sansSerif.name}";

        format = "%s %p\\n%b";

        # Math all notifications (low, normal and critical)
        background = "#${base01}";
        foreground = "#${base07}";
        timeout = 2;
      };

      ##################
      # Specific rules #
      ##################

      urgency_low = { };

      urgency_normal = { };

      urgency_critical = {
        frame_color = "#${base08}";
        timeout = 0;
      };
    };
  };
}
