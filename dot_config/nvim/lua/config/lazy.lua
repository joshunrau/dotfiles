-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  --  Enable "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  require('plugins/gitsigns'),
  -- Useful plugin to show you pending keybinds
  require('plugins/which-key'),
  -- Fuzzy Finder (files, lsp, etc)
  require('plugins/telescope'),
  -- LSP Configuration & Plugins
  require('plugins/lspconfig'),
  -- Autoformat
  require('plugins/conform'),
  -- Autocompletion
  require('plugins/cmp'),
}, {
  install = {
    colorscheme = {
      'habamax',
    },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  ui = {
    icons = {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
