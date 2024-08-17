{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/markdown" = "nvim.desktop";
      "text/plain" = "nvim.desktop";
      "image/png" = "imv.desktop";
      "image/jpeg" = "imv.desktop";
      "image/gif" = "imv.desktop";
      "image/webp" = "imv.desktop";

      "x-scheme-handler/http" = "chromium.desktop";
      "x-scheme-handler/https" = "chromium.desktop";
      "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";
      "application/zip" = "org.gnome.FileRoller.desktop";

    };

  };
}
