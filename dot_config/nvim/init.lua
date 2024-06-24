-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require('core.options')

require('core.keymaps')

-- [[ Basic Keymaps ]]
-- [[ Install `lazy.nvim` plugin manager ]]
require('lazy-bootstrap')

-- [[ Configure and install plugins ]]
require('lazy-plugins')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

-- CUSTOM

vim.api.nvim_create_autocmd('ExitPre', {
  group = vim.api.nvim_create_augroup('Exit', { clear = true }),
  command = 'set guicursor=a:ver90',
  desc = 'Reset cursor to default terminal style when exiting Neovim',
})
