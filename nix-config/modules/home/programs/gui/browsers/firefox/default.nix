{ inputs, pkgs, ... }: {
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;
        settings = {
          "browser.startup.homepage" = "https://search.nixos.org/packages";

          # Disable irritating first-run stuff
          "browser.disableResetPrompt" = true;
          "browser.download.panel.shown" = true;
          "browser.feeds.showFirstRunUI" = false;
          "browser.messaging-system.whatsNewPanel.enabled" = false;
          "browser.rights.3.shown" = true;
          "browser.shell.defaultBrowserCheckCount" = 1;
          "browser.startup.homepage_override.mstone" = "ignore";
          "browser.uitour.enabled" = false;
          "startup.homepage_override_url" = "";
          "trailhead.firstrun.didSeeAboutWelcome" = true;
          "browser.bookmarks.addedImportButton" = true;
          "gfx.webrender.all" = true; # Force enable GPU acceleration
          "media.ffmpeg.vaapi.enabled" = true;
          "widget.dmabuf.force-enabled" = true; # Required in recent Firefoxes

          "reader.parse-on-load.force-enabled" = true;

          # Hide the "sharing indicator", it's especially annoying
          # with tiling WMs on wayland
          "privacy.webrtc.legacyGlobalIndicator" = false;

          # Disable "save password" prompt
          "signon.rememberSignons" = false;
          # Actual settings
          "app.shield.optoutstudies.enabled" = false;
          "app.update.auto" = false;
          "geo.enabled" = false;
          "geo.provider.use_corelocation" = false;
          "geo.provider.use_geoclue" = false;
          "geo.provider.use_gpsd" = false;
          "browser.bookmarks.restore_default_bookmarks" = false;
          "browser.contentblocking.category" = "strict";
          "browser.ctrlTab.recentlyUsedOrder" = true;
          "browser.discovery.enabled" = false;
          "browser.laterrun.enabled" = false;
          "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" =
            false;
          "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" =
            false;
          "browser.newtabpage.activity-stream.feeds.snippets" = false;
          "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned" =
            "";
          "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.searchEngines" =
            "";
          "browser.newtabpage.activity-stream.section.highlights.includePocket" =
            false;
          "browser.newtabpage.activity-stream.showSponsored" = false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
          "browser.newtabpage.pinned" = false;
          "browser.protections_panel.infoMessage.seen" = true;
          "browser.quitShortcut.disabled" = true;
          "browser.shell.checkDefaultBrowser" = false;
          "browser.ssb.enabled" = true;
          "browser.toolbars.bookmarks.visibility" = "never";
          "browser.urlbar.placeholderName" = "DuckDuckGo";
          "browser.urlbar.suggest.openpage" = false;
          "datareporting.policy.dataSubmissionEnable" = false;
          "datareporting.policy.dataSubmissionPolicyAcceptedVersion" = 2;
          "dom.security.https_only_mode" = true;
          "dom.security.https_only_mode_ever_enabled" = true;
          "extensions.getAddons.showPane" = false;
          "extensions.htmlaboutaddons.recommendations.enabled" = false;
          "extensions.pocket.enabled" = false;
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "identity.fxaccounts.enabled" = false;
          "privacy.trackingprotection.enabled" = true;
          "privacy.trackingprotection.socialtracking.enabled" = true;

          "font.name.monospace.x-western" = "Iosevka SS18";
          "font.name.sans-serif.x-western" = "Inter";
          "font.name.serif.x-western" = "Inter";

        };
        extensions = with inputs.firefox-addons.packages."${pkgs.system}"; [
          tridactyl
          sidebery
          sponsorblock
          youtube-shorts-block
          ublock-origin
          bitwarden
          darkreader
        ];
        userChrome = builtins.readFile ./chrome/userChrome.css;
      };
    };
  };
  # home.file.".mozilla/firefox/default/chrome/img/" = {
  #   source = ./chrome/img/.;
  #   recursive = true;
  # };
}
