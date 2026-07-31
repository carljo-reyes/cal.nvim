local pick = function(picker)
  return function()
    require("snacks.picker").pick(picker)
  end
end

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
        pick("filetypes"),
        desc = "Change filetype",
      },
      {
        "<Leader>h",
        pick("help"),
      },
      {
        "<Leader>o",
        pick("files"),
      },
      {
        "<Space><Space>",
        pick(),
      },
    },
  },
}
