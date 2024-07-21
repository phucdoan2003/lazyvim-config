local function openDirectory(directory)
  vim.cmd("Neotree close")
  vim.cmd("Neotree show " .. directory)
  vim.cmd("cd " .. directory)
end

vim.api.nvim_create_user_command("P", function()
  openDirectory("D:\\Projects")
end, { nargs = 0 })

vim.api.nvim_create_user_command("C", function()
  openDirectory("C:\\Users\\DELL\\AppData\\Local\\nvim")
end, { nargs = 0 })

vim.api.nvim_create_user_command("U", function()
  openDirectory("D:\\Uni")
end, { nargs = 0 })

vim.api.nvim_create_user_command("S", function()
  openDirectory("D:\\SalesData")
end, { nargs = 0 })

function openSqlShellInSplit()
  local term_cmd = '"C:\\Program Files\\PostgreSQL\\16\\scripts\\runpsql.bat"'
  os.execute('start "" ' .. term_cmd)
end

function openTerminalInSplit()
  local term_cmd = ""
  os.execute('start "" ' .. term_cmd)
end

function openGitBashInSplit()
  local term_cmd = '"C:\\Program Files\\Git\\bin\\bash.exe"'
  os.execute('start "" ' .. term_cmd)
end

function openUbuntuTerminalInSplit()
  local cwd = vim.fn.getcwd()
  local term_cmd = '"C:\\Users\\DELL\\AppData\\Local\\Microsoft\\WindowsApps\\ubuntu.exe" run --cd ' .. cwd
  os.execute('start "" ' .. term_cmd)
end

-- vim.api.nvim_create_augroup('NeotreeAutocommands', { clear = true })
-- vim.api.nvim_create_autocmd('FileType', {
--     pattern = 'neo-tree',
--     group = 'NeotreeAutocommands',
--     callback = function()
--         local bufnr = vim.api.nvim_get_current_buf()
--         vim.api.nvim_buf_set_keymap(bufnr, 'n', 'd', ':lua delete_directory()<CR>', { noremap = true, silent = true })
--     end,
-- })

vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  ":lua openTerminalInSplit()<CR>",
  { noremap = true, silent = true, desc = "Windows Command Terminal" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>tg",
  ":lua openGitBashInSplit()<CR>",
  { noremap = true, silent = true, desc = "Git Bash" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ts",
  ":lua openSqlShellInSplit()<CR>",
  { noremap = true, silent = true, desc = "SQL Shell" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>tu",
  ":lua openUbuntuTerminalInSplit()<CR>",
  { noremap = true, silent = true, desc = "Ubuntu" }
)

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
          event = "neo_tree_buffer_leave",
          handler = function()
            vim.opt_local.relativenumber = false
          end,
        },
      },
    },
  },
}
