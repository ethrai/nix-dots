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
    settings = {

      theme = lib.mkForce "base16_default_dark";
      editor = {
        cursor-shape = {
          insert = "bar";
        };
        true-color = true;
      };

    };

    languages.language-server.pylsp.config.pylsp = {
      plugins.ruff.enabled = true;
      plugins.black.enabled = true;
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
      }
      {
        name = "python";
        auto-format = true;
        # formatter.command = "${pkgs.}"
      }
    ];

  };
}
