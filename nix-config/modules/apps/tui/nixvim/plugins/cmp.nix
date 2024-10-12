{
  programs.nixvim = {
    opts.completeopt = [ "menu" "menuone" "noselect" ];
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          formatting.fields = [ "kind" "abbr" "menu" ];
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "luasnip"; }
            { name = "buffer"; }
          ];
          mapping = {
            "<C-j>" = ''
              cmp.mapping.select_next_item { behavior =
                          cmp.SelectBehavior.Insert }'';
            "<C-k>" = ''
              cmp.mapping.select_prev_item { behavior =
                                        cmp.SelectBehavior.Insert }'';
            "<C-f>" = ''
              cmp.mapping.confirm {
                            behavior = cmp.ConfirmBehavior.Insert,
                            select = true;
                          }'';
            "<C-Space>" = "cmp.mapping.complete()";
          };

          snippet = {
            expand =
              "function(args) require('luasnip').lsp_expand(args.body) end";
          };

        window = {
          completion = {
            winhighlight =
              "FloatBorder:NoicePopupBorder";
            scrollbar = false;
            sidePadding = 0;
            border = "rounded";
          };

          settings.documentation = {
            border = "rounded";
            winhighlight =
              "FloatBorder:NoicePopupBorder";
          };
        };
        };
      };
    };

    extraConfigLua = ''
      local ls = require("luasnip")

      ls.config.set_config {
        history = false,
        updateevents = "TextChanged, TextChangedI",
      }

      vim.keymap.set({"i", "s"}, "<c-l>", function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end, { silent = true })


      vim.keymap.set({"i", "s"}, "<c-h>", function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { silent = true })
    '';
  };
}
