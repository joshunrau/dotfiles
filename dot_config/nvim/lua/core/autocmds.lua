local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd('ExitPre', {
  group = vim.api.nvim_create_augroup('Exit', { clear = true }),
  command = 'set guicursor=a:ver90',
  desc = 'Reset cursor to default terminal style when exiting Neovim',
})
