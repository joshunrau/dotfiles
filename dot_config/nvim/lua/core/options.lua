local opt = vim.opt

-- When there is a previous search pattern, highlight all its matches
opt.hlsearch = true

-- When creating a new line, copy the indentation from previous line
opt.autoindent = true

-- Color schemas that can be light or dark will be made dark
opt.background = 'dark'

-- Allow backspace on indent, end of line or insert mode start position
opt.backspace = 'indent,eol,start'

-- Sync clipboard between OS and Neovim.
opt.clipboard = 'unnamedplus'

-- Highlight the text line of the cursor
opt.cursorline = true

-- Expand tabs to be spaces
opt.expandtab = true

-- Use special characters to denote tabs, trailing spaces, and non-breakable space characters (see opt.listchars)
opt.list = true

-- Strings to use to denote certain whitespace characters in list mode, see (opt.list)
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Enable mouse support in all modes
opt.mouse = 'a'

-- Enable line numbers default
opt.number = true

-- Use relative line numbers instead of absolute
opt.relativenumber = true

-- Set a high value for the minimal number of screen lines above and below the cursor to ensure it stays centered in the window, except at the file's start or end.
opt.scrolloff = 999

-- Set the number of spaces for autoindent
opt.shiftwidth = 2

-- Don't show the mode on the last line, since it is already in the status line
opt.showmode = false

-- Always include a signcolumn (extra space on the left for information, e.g., breakpoints)
opt.signcolumn = 'yes'

-- When splitting a horizontal window, open the new window on the bottom
opt.splitbelow = true

-- When splitting a vertical window, open the new window to the right
opt.splitright = true

-- Set the number of spaces for tabs
opt.tabstop = 2

-- Enables 24-bit RGB color in the TUI
opt.termguicolors = true

--- Decrease the time in milliseconds to wait for a mapped sequence to complete (displays which-key popup sooner)
opt.timeoutlen = 1000

-- Preserve undo history when writing a file
opt.undofile = true

-- Decreate how many many milliseconds to wait to write the swap file to disk, if nothing is typed
opt.updatetime = 250

-- Disable text wrapping
opt.wrap = false
