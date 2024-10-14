{ pkgs, ... }: {
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      settings = {
        options = {
          component_separators = {
            left = "";
            right = "";
          };
          section_separators = {
            left = "";
            right = "";
          };
          disabled_filetypes = {
            __unkeyed-1 = "startify";
            __unkeyed-2 = "neo-tree";
            statusline = [ "dap-repl" ];
          };
          globalstatus = true;

        };
        refresh = { statusline = 250; };
        extensions = [ "nvim-dap-ui" "oil" ];
        sections = {
          lualine_a = [{
            __unkeyed-1 = "filename";
            file_status = true;
            path = 4;
            shorting_target = 10;
          }];
          lualine_b = [ "branch" ];
          lualine_c = [ "navic" ];
          lualine_x = [
            
            "diff"
            "diagnostics"
            {
              __unkeyed-1 = "filetype";
              icon_only = true;
            }
          ];
          lualine_y = [ "harpoon2" ];
          lualine_z = [ "progress" ];
        };
      };
    };
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "harpoon-lualine";
        src = pkgs.fetchFromGitHub {
          owner = "letieu";
          repo = "harpoon-lualine";
          rev = "2697221ebc7bb0c7779c1f14a4c36c05d4445c28";
          hash = "sha256-GQ5XnVPPEDTzeIr98csSPO89+HInvcW9P3HFp9TuLNI=";
        };
      })
    ];
  };
}
