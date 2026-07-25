return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.picker = opts.picker or {}
    opts.picker.sources = opts.picker.sources or {}

    opts.picker.sources.filetypes = require("cal.picker.filetypes")
  end,
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
}
