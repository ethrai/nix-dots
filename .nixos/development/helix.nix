{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  stylix.targets.helix.enable = false;
  programs.helix = {
    enable = true;
    package = inputs.helix.packages.${pkgs.system}.helix;
    defaultEditor = true;
    settings = {
      theme = lib.mkForce "base16_default_dark";
      editor.cursor-shape = {
        normal = "block";
        insert = "block";
        select = "block";
      };
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
      }
    ];
  };
}
