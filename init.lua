-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local lspconfig = require("lspconfig")
local cmp = require("cmp_nvim_lsp")
local capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" })

vim.cmd("highlight LineNr guifg=#BD93F9 guibg=NONE")
vim.cmd("highlight WinSeparator guifg=#6E6C7E guibg=NONE")
vim.cmd("highlight NeoTreeWinSeparator guifg=#6E6C7E guibg=NONE")
vim.cmd("highlight BufferLineSeparator guifg=#6E6C7E guibg=NONE")
