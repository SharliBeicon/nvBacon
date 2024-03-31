--Basic settings
vim.g.mapleader = " "

vim.wo.number = true

--Mapping
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>1", vim.cmd.bfirst)
vim.keymap.set("n", "<leader>0", vim.cmd.blast)
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)

-- Toggle auto-indenting for code paste
vim.keymap.set('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
vim.keymap.set('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
vim.keymap.set('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
vim.keymap.set('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
vim.keymap.set('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
vim.keymap.set('n', '<leader>q', ':qa!<CR>')

--Tab Options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2


--Lazy Requirement
require("base.plugins.lazy")
