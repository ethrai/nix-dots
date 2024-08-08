{
  config,
  lib,
  inputs,
  ...
}:
{

  programs.kitty = {
    enable = true;
    settings = {
      cursor_shape = "block";
      cursor_blink_interval = 0;
    };
  };
}
