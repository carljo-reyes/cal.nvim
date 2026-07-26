return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          filetypes = require("cal.picker.filetypes"),
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<Leader>ct",
        function()
          Snacks.picker.pick("filetypes")
        end,
        desc = "Change filetype",
      },
      {
        "<Space><Space>",
        function()
          Snacks.picker()
        end,
      },
    },
  },
}
