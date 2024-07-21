return {
  {
    "j-hui/fidget.nvim",
    opts = {
      notification = {
        window = {
          winblend = 0,
        },
      },
    },
  },
  {
    "xiyaowong/transparent.nvim",
    opts = {
      groups = { -- table: default groups
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "EndOfBuffer",
      },
      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "Pmenu",
        "Wildmenu",
        "CmpItemMenu",
        "Float",
        "NormalFloat",
        -- "FidgetTitle",
        -- "FidgetTask",
      },
    },
  },
}
