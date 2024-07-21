return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "catppuccin",
    opts = {
      window = {
        transparent_background = true,
      },
    },
    config = function()
      require("catppuccin").setup({
        custom_highlights = function(colors)
          return {
            AlphaHeader = { fg = colors.none },
          }
        end,
      })
    end,
  },
}
