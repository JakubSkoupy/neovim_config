local dap, dapui = require("dap"), require("dapui")
--require("dapui").setup()

dap.configurations.rust = {
    {
        type = 'rust';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        RustPath = function()
            return '/usr/bin/rust_analyzer'
        end;
    },
}

--vim.keymap("n", "<leader>dt", ":luafile /home/kuba/.config/nvim/dapui.lua")
require("dapui").close()
vim.api.nvim_set_keymap('n', '<leader>11', ':luafile /home/kuba/.config/nvim/dapui.lua<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>db', ':DapToggleBreakpoint<CR>', {noremap = true})



