return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup()

    -- auto-open when nvim is opened with a directory
    local api = require("nvim-tree.api")
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function(data)
        if vim.fn.isdirectory(data.file) == 1 then
          api.tree.open()
        end
      end,
    })
  end,
}
