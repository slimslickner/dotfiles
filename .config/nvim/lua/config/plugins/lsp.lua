return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("beancount", {
      init_options = {
        journal_file = "/path/to/your/main.beancount",
      },
    })
    vim.lsp.enable("beancount")

    -- so nvim recognizes .beancount and .bean files
    vim.filetype.add({
      extension = {
        beancount = "beancount",
        bean = "beancount",
      },
    })
  end,
}
