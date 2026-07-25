local cached_items

return {
  layout = {
    preset = "select",
  },

  finder = function()
    if cached_items then
      return cached_items
    end

    cached_items = {}

    for _, ft in ipairs(vim.fn.getcompletion("", "filetype")) do
      cached_items[#cached_items + 1] = {
        text = ft,
        ft = ft,
      }
    end

    table.sort(cached_items, function(a, b)
      return a.ft < b.ft
    end)

    return cached_items
  end,

  format = function(item)
    return {
      { item.ft },
    }
  end,

  confirm = function(picker, item)
    picker:close()
    vim.bo.buftype = ""
    vim.bo.filetype = item.ft
  end,
}
