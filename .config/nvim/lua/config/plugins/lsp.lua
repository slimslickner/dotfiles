return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.beancount.setup({
      init_options = {
        journal_file = "/path/to/your/main.beancount",
      },
    })

    -- so nvim recognizes .beancount and .bean files
    vim.filetype.add({
      extension = {
        beancount = "beancount",
        bean = "beancount",
      },
    })
  end,
}
