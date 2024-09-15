vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  ":!tmux new-window<CR>",
  { noremap = true, silent = true, desc = "New Tmux Window" }
)

return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
