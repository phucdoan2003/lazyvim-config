local function openDirectory(directory)
    vim.cmd("Neotree close")
    vim.cmd("Neotree show " .. directory)
    vim.cmd("cd " .. directory)
end

vim.api.nvim_create_user_command("P", function()
    openDirectory("~/Documents/Projects")
end, { nargs = 0 })

vim.api.nvim_create_user_command("C", function()
    openDirectory("~/.config/nvim/")
end, { nargs = 0 })

vim.api.nvim_create_user_command("U", function()
    openDirectory("~/Documents/Uni/")
end, { nargs = 0 })

vim.api.nvim_create_user_command("S", function()
    openDirectory("~/Documents/EDGE/")
end, { nargs = 0 })

-- vim.api.nvim_create_augroup('NeotreeAutocommands', { clear = true })
-- vim.api.nvim_create_autocmd('FileType', {
--     pattern = 'neo-tree',
--     group = 'NeotreeAutocommands',
--     callback = function()
--         local bufnr = vim.api.nvim_get_current_buf()
--         vim.api.nvim_buf_set_keymap(bufnr, 'n', 'd', ':lua delete_directory()<CR>', { noremap = true, silent = true })
--     end,
-- })

return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                bind_to_cwd = true,
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
                use_libuv_file_watcher = false,
            },
            event_handlers = {
                {
                    event = "neo_tree_buffer_enter",
                    handler = function()
                        vim.opt_local.relativenumber = true
                    end,
                },
                {
                    event = "file_open_requested",
                    handler = function()
                        require("neo-tree.command").execute({ action = "close" })
                    end
                }
            },
        },
    },
}
