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

      theme = lib.mkForce "gruvbox";
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
