-- Basic UI Settings
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.cursorline = true -- Highlight current line
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor
vim.opt.wrap = false -- Don't wrap long lines
vim.opt.spelllang = { "en", "no" } -- Spellcheck languages
vim.opt.winborder = "rounded" -- Rounded floating window borders (Neovim 0.11+)

-- Indentation & Tabs
vim.opt.tabstop = 2 -- Tab width
vim.opt.shiftwidth = 2 -- Indent width
vim.opt.softtabstop = 2 -- Soft tab stop
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smarter auto-indenting
vim.opt.autoindent = true -- Maintain indentation from previous line

-- Search
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.smartcase = true -- Case-sensitive if uppercase present
vim.opt.incsearch = true -- Show matches while typing
vim.opt.grepprg = "rg --vimgrep" -- Use ripgrep if available
vim.opt.grepformat = "%f:%l:%c:%m" -- Filename, line, column, message

-- Visuals
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.colorcolumn = "130" -- Show column at 100 chars
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- Duration to highlight matches
vim.opt.completeopt = "menuone,noinsert,noselect" -- Better completion UX
vim.opt.showmode = false -- Don't show mode in command line
vim.opt.pumheight = 10 -- Max height for popup menu
vim.opt.pumblend = 10 -- Popup menu transparency
vim.opt.winblend = 0 -- Floating window transparency

-- File Handling
vim.opt.backup = false -- No backup files
vim.opt.writebackup = false -- No write-backup before overwrite
vim.opt.swapfile = false -- No swap files
vim.opt.undofile = true -- Enable persistent undo
vim.opt.updatetime = 300 -- CursorHold event trigger time
vim.opt.timeoutlen = 500 -- Timeout for mapped sequences
vim.opt.ttimeoutlen = 0 -- No terminal keycode delay
vim.opt.autoread = true -- Auto-reload files changed externally
vim.opt.autowrite = false -- Don't auto-save files
vim.opt.diffopt:append({ "vertical", "algorithm:patience", "linematch:60" })

-- Behavior
vim.opt.autochdir = false -- Don't auto-change working dir
vim.opt.iskeyword:append("-") -- Treat dash-separated words as one
vim.opt.path:append("**") -- Enable recursive file search with `gf`
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.wildmenu = true -- Command-line completion menu
vim.opt.wildmode = "longest:full,full" -- Better command-line completion
vim.opt.wildignorecase = true -- Case-insensitive tab completion

-- Folding
vim.opt.foldmethod = "expr" -- Use treesitter folds
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99 -- Keep all folds open by default

-- Split Behavior
vim.opt.splitbelow = true -- Horizontal splits open below
vim.opt.splitright = true -- Vertical splits open to the right

