-- Enable line numbers default
vim.opt.number = true

-- Use relative line numbers instead of absolute
vim.opt.relativenumber = true

-- Enable mouse support in all modes
vim.opt.mouse = 'a'

-- Don't show the mode on the last line, since it is already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = 'unnamedplus'

-- Preserve undo history when writing a file
vim.opt.undofile = true

-- Always include a signcolumn (extra space on the left for information, e.g., breakpoints)
vim.opt.signcolumn = 'yes'

-- Decreate how many many milliseconds to wait to write the swap file to disk, if nothing is typed
vim.opt.updatetime = 250

--- Decrease the time in milliseconds to wait for a mapped sequence to complete (displays which-key popup sooner)
vim.opt.timeoutlen = 300

-- Splitting a window will put the new window right of the current one
vim.opt.splitright = true

-- When on, splitting a window will put the new window right of the current one
vim.opt.splitbelow = true

-- Use special characters to denote tabs, trailing spaces, and non-breakable space characters (see vim.opt.listchars)
vim.opt.list = true

-- Strings to use to denote certain whitespace characters in list mode, see (vim.opt.list)
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Highlight the text line of the cursor
vim.opt.cursorline = true

-- Set a high value for the minimal number of screen lines above and below the cursor to ensure it stays centered in the window, except at the file's start or end.
vim.opt.scrolloff = 999

-- Disable text wrapping
vim.opt.wrap = false
