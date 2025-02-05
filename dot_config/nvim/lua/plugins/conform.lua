return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>pf',
      function()
        require('conform').format({ async = true, lsp_format = 'fallback' })
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      astro = { 'prettierd', 'prettier', stop_after_first = true },
      html = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      css = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      scss = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      json = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      sh = { 'shfmt' },
      -- yaml = { 'prettierd', 'prettier', stop_after_first = true },
    },
  },
}
