-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local number_toggle_group = vim.api.nvim_create_augroup("NumberToggle", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  group = number_toggle_group,
  pattern = "*",
  callback = function()
    vim.opt_local.relativenumber = true
  end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave" }, {
  group = number_toggle_group,
  pattern = "*",
  callback = function()
    vim.opt_local.relativenumber = false
  end,
})

-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--   pattern = "*",
--   command = "silent! wall",
--   nested = true,
-- })

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "line",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

vim.api.nvim_create_augroup("TerminalSettings", { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
  group = "TerminalSettings",
  pattern = "*",
  callback = function()
    vim.cmd("setlocal nonumber norelativenumber")
    vim.cmd("startinsert")
    vim.cmd("resize " .. math.floor(vim.o.lines / 4))
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  group = "TerminalSettings",
  pattern = "term://*",
  command = "setlocal nonumber norelativenumber | startinsert",
})
