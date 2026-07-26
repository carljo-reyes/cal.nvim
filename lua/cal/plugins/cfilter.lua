return {
  dir = vim.env.VIMRUNTIME,
  event = "VeryLazy",
  init = function()
    vim.cmd.packadd("cfilter")
  end,
}
