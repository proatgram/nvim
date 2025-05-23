vim.diagnostic.config({
  virtual_text = {
    prefix = '●',  -- Or '■', '▶', '●' etc.
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
