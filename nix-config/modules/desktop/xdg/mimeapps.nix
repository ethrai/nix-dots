{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = let
      browser = [ "firefox.desktop" ];
      editor = [ "nvim.desktop" ];
      excel = [ "libreoffice-calc.desktop" ];
      image = [ "imv.desktop" ];
      mail = [ "thunderbird.desktop" ];
      powerpoint = [ "libreoffice-impress.desktop" ];
      terminal = [ "kitty.desktop" ];
      video = [ "vlc.desktop" ];
      word = [ "libreoffice-writer.desktop" ];
    in {

      "text/markdown" = editor;
      "text/plain" = editor;
      "application/json" = editor;
      "application/rss+xml" = editor;
      "image/png" = image;
      "image/jpeg" = image;
      "image/gif" = image;
      "image/webp" = image;
      "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";
      "application/zip" = "org.gnome.FileRoller.desktop";
      "x-scheme-handler/terminal" = terminal;
      "application/vnd.ms-excel" = excel;
      "application/vnd.ms-powerpoint" = powerpoint;
      "application/vnd.ms-word" = word;
      "application/vnd.oasis.opendocument.database" =
        [ "libreoffice-base.desktop" ];
      "application/vnd.oasis.opendocument.formula" =
        [ "libreoffice-math.desktop" ];
      "application/vnd.oasis.opendocument.graphics" =
        [ "libreoffice-draw.desktop" ];
      "application/vnd.oasis.opendocument.graphics-template" =
        [ "libreoffice-draw.desktop" ];
      "application/vnd.oasis.opendocument.presentation" = powerpoint;
      "application/vnd.oasis.opendocument.presentation-template" = powerpoint;
      "application/vnd.oasis.opendocument.spreadsheet" = excel;
      "application/vnd.oasis.opendocument.spreadsheet-template" = excel;
      "application/vnd.oasis.opendocument.text" = word;
      "application/vnd.oasis.opendocument.text-master" = word;
      "application/vnd.oasis.opendocument.text-template" = word;
      "application/vnd.oasis.opendocument.text-web" = word;
      "application/vnd.openxmlformats-officedocument.presentationml.presentation" =
        powerpoint;
      "application/vnd.openxmlformats-officedocument.presentationml.template" =
        powerpoint;
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" =
        excel;
      "application/vnd.openxmlformats-officedocument.spreadsheetml.template" =
        excel;
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document" =
        word;
      "application/vnd.openxmlformats-officedocument.wordprocessingml.template" =
        word;
      "application/vnd.stardivision.calc" = excel;
      "application/vnd.stardivision.draw" = [ "libreoffice-draw.desktop" ];
      "application/vnd.stardivision.impress" = powerpoint;
      "application/vnd.stardivision.math" = [ "libreoffice-math.desktop" ];
      "application/vnd.stardivision.writer" = word;
      "application/vnd.sun.xml.base" = [ "libreoffice-base.desktop" ];
      "application/vnd.sun.xml.calc" = excel;
      "application/vnd.sun.xml.calc.template" = excel;
      "application/vnd.sun.xml.draw" = [ "libreoffice-draw.desktop" ];
      "application/vnd.sun.xml.draw.template" = [ "libreoffice-draw.desktop" ];
      "application/vnd.sun.xml.impress" = powerpoint;
      "application/vnd.sun.xml.impress.template" = powerpoint;
      "application/vnd.sun.xml.math" = [ "libreoffice-math.desktop" ];
      "application/vnd.sun.xml.writer" = word;
      "application/vnd.sun.xml.writer.global" = word;
      "application/vnd.sun.xml.writer.template" = word;
      "application/vnd.wordperfect" = word;
      "application/x-arj" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-bittorrent" = [ "org.qbittorrent.qBittorrent.desktop" ];
      "application/x-bzip" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-bzip-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-compress" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-compressed-tar" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-extension-htm" = browser;
      "application/x-extension-html" = browser;
      "application/x-extension-ics" = mail;
      "application/x-extension-m4a" = video;
      "application/x-extension-mp4" = video;
      "application/x-extension-shtml" = browser;
      "application/x-extension-xht" = browser;
      "application/x-extension-xhtml" = browser;
      "application/x-flac" = video;
      "application/x-gzip" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-lha" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-lhz" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-lzop" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-matroska" = video;
      "application/x-netshow-channel" = video;
      "application/x-quicktime-media-link" = video;
      "application/x-quicktimeplayer" = video;
      "application/x-rar" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-shellscript" = editor;
      "application/x-smil" = video;
      "application/x-tar" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-tarz" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-wine-extension-ini" = [ "org.kde.kate.desktop" ];
      "application/x-zoo" = [ "org.gnome.FileRoller.desktop" ];
      "application/xhtml+xml" = browser;
      "application/xml" = editor;
      "audio/*" = video;
      "image/*" = image;
      "image/bmp" = image;
      "image/jpg" = image;
      "image/pjpeg" = image;
      "image/svg+xml" = [ "org.inkscape.Inkscape.desktop" ];
      "image/tiff" = image;
      "image/x-compressed-xcf" = [ "gimp.desktop" ];
      "image/x-fits" = [ "gimp.desktop" ];
      "image/x-icb" = image;
      "image/x-ico" = image;
      "image/x-pcx" = image;
      "image/x-portable-anymap" = image;
      "image/x-portable-bitmap" = image;
      "image/x-portable-graymap" = image;
      "image/x-portable-pixmap" = image;
      "image/x-psd" = [ "gimp.desktop" ];
      "image/x-xbitmap" = image;
      "image/x-xcf" = [ "gimp.desktop" ];
      "image/x-xpixmap" = image;
      "image/x-xwindowdump" = image;
      "message/rfc822" = mail;
      "text/*" = editor;
      "text/calendar" = mail;
      "text/html" = browser;
      "video/*" = video;
      "x-scheme-handler/about" = browser;
      "x-scheme-handler/chrome" = browser;
      "x-scheme-handler/discord" = [ "discord.desktop" ];
      "x-scheme-handler/etcher" = [ "balena-etcher-electron.desktop" ];
      "x-scheme-handler/ftp" = browser;
      "x-scheme-handler/gitkraken" = [ "GitKraken.desktop" ];
      "x-scheme-handler/http" = browser;
      "x-scheme-handler/https" = browser;
      "x-scheme-handler/mailto" = mail;
      "x-scheme-handler/mid" = mail;
      "x-scheme-handler/spotify" = [ "spotify.desktop" ];
      "x-scheme-handler/tg" = [ "org.telegram.desktop.desktop" ];
      "x-scheme-handler/unknown" = browser;
      "x-scheme-handler/webcal" = mail;
      "x-scheme-handler/webcals" = mail;
      "x-scheme-handler/x-github-client" = [ "github-desktop.desktop" ];
      "x-scheme-handler/x-github-desktop-auth" = [ "github-desktop.desktop" ];
      "x-www-browser" = browser;
      "text/x-sql" = editor;
    };

  };
}
