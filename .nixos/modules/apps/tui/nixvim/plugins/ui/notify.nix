{
  programs.nixvim = {
    plugins.notify = {
      enable = true;
      fps = 60;
      render = "default";
      timeout = 2500;
      topDown = true;
      stages = "static";
      maxWidth = 60;
      minimumWidth = 30;
    };
  };
}

