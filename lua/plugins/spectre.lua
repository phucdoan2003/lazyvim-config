return {
  "nvim-pack/nvim-spectre",
  keys = {
    {
      "<leader>sr",
      function()
        require("spectre").open_file_search()
      end,
      desc = "Search and Replace in current file",
    },
    {
      "<leader>sR",
      function()
        require("spectre").open()
      end,
      desc = "Search and Replace in current workspace",
    },
  },
}
