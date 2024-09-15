-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.pumblend = 0
vim.opt.fillchars:append({
  vert = "│", -- Vertical separator
  horiz = "─", -- Horizontal separator
  vertleft = "┤",
  vertright = "├",
  horizup = "┴",
  horizdown = "┬",
  verthoriz = "┼",
})

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
