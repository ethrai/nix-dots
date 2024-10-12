{
  services.xremap = {
    userName = "sergio";
    config = {
      modmap = [{
        name = "default";
        remap = {
          capslock = {
            held = "leftctrl";
            alone = "esc";
          };
        };
      }];
    };
  };
}
