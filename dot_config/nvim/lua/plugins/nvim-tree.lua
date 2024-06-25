return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local nvimtree = require('nvim-tree')
    -- Recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      -- Disable window_picker for explorer to work well with window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { '.DS_Store' },
      },
      git = {
        ignore = false,
      },
    })
    -- Setup keymaps
    vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' }) -- toggle file explorer
    vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' }) -- toggle file explorer on current file
    vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' }) -- collapse file explorer
    vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' }) -- refresh file explorer
  end,
}
