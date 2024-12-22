vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
  group = vim.api.nvim_create_augroup('wrap-spell', { clear = true }),
  pattern = { 'gitcommit', 'markdown' },
  desc = 'Enable spell/wrap based on filetype',
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
