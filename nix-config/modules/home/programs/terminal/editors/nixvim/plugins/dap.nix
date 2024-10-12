{
  programs.nixvim = {
    plugins.dap = {
      adapters = { };
      extensions = {
        dap-go = { enable = true; };
        dap-ui = { enable = true; };
        dap-virtual-text = { enable = true; };

      };
      signs = {
        dapBreakpoint = {
          text = "";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "";
          texthl = "dapBreakpointCondition";
        };
        dapBreakpointRejected = {
          text = "";
          texthl = "DapBreakpointRejected";
        };
        dapLogPoint = {
          text = "";
          texthl = "DapLogPoint";
        };
        dapStopped = {
          text = "";
          texthl = "DapStopped";
        };
      };
    };
    extraConfigLua = ''
      local dap = require("dap")
      local dapui = require("dapui")

      vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
      vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)
      vim.keymap.set("n", "<leader>?", function()
        dapui.eval(nil, { enter = true })
      end)

      vim.keymap.set("n", "<F1>", dap.continue)
      vim.keymap.set("n", "<F2>", dap.step_into)
      vim.keymap.set("n", "<F3>", dap.step_into)
      vim.keymap.set("n", "<F4>", dap.step_into)
      vim.keymap.set("n", "<F5>", dap.step_into)
      vim.keymap.set("n", "<F12>", dap.step_into)
    '';
  };
}
