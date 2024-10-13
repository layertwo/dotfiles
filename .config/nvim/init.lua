-- General settings
vim.opt.filetype = "true"
vim.opt.syntax = "true"
vim.g.editorconfig = false

vim.opt.background = "dark"
vim.opt.number = true
vim.opt.showmatch = true
vim.opt.undolevels = 1000
vim.opt.wrap = false
vim.opt.spelllang = { "en_us" }
vim.opt.ruler = true

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.shiftround = true

vim.opt.backspace = "indent,eol,start"
vim.opt.encoding = "utf-8"

vim.opt.modeline = true
vim.opt.history = 100

vim.opt.listchars = { tab = "▷⋅", trail = "⋅", nbsp = "⋅" }
vim.opt.list = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- File management
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Undo file
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.nvim/undo/")

-- Mappings
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "<leader>ls", ":set list!<CR>", { desc = "Toggle List" })
vim.keymap.set("n", "<leader>lt", ":set nolist<CR>", { desc = "Toggle List" })

-- Functions
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = {"*.c", "*.cpp", "*.h", "*.py", "*.rb", "*.go", "*.sh", "*.txt", "*.lua", "*.ts"},
   callback = function()
        vim.cmd("retab")
        vim.cmd("s/\\s\\+$//e")
   end
})

-- Other settings
vim.opt.cursorline = true
vim.opt.ttyfast = true
