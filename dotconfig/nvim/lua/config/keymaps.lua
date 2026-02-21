-- Mapping Function

local function map(mode, key, action)
  vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

-- Setting Keys

vim.g.mapleader = "\\"

-- Buffers

map("n", "bn", ":bnext<CR>") -- Move to next buffer
map("n", "bv", ":bprevious<CR>") -- Move to previous buffer
map("n", "bg", ":BufferMovePrevious<CR>") -- Move buffer to previous position
map("n", "bh", ":BufferMoveNext<CR>") -- Move buffer to next position
map("n", "bq", ":BufferClose<CR>") -- Close buffer
map("n", "bQ", ":bufdo bd<CR>") -- Close all buffers

-- Window Navigation

map("n", "<C-a>", "<C-w>h") -- Move to left window
map("n", "<C-s>", "<C-w>j") -- Move to down window
map("n", "<C-w>", "<C-w>k") -- Move to top window
map("n", "<C-d>", "<C-w>l") -- Move to right window

-- FzF and Grep

map("n", "<leader>f", ":lua require('fzf-lua').files()<CR>") -- Search cwd
map("n", "<leader>Fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") -- Search home
map("n", "<leader>Fc", ":lua require('fzf-lua').files({ cwd = '~/.config' })<CR>") -- Search .config
map("n", "<leader>Ff", ":lua require('fzf-lua').files({ cwd = '..' })<CR>") -- Search above
map("n", "<leader>Fr", ":lua require('fzf-lua').resume()<CR>") -- Last search
map("n", "<leader>g", ":lua require('fzf-lua').grep()<CR>") -- Grep

-- Misc

map("n", "nt", ":NvimTreeToggle<CR>") -- Open Nvim-Tree
map("n", "<leader>t", ":lua require('FTerm').toggle()<CR>")

map("n", "<C-c>", "yy") -- Copy line
map("n", "<C-x>", "dd") -- Cut line
map("n", "<C-z>", '"_dd') -- Delete line

map("n", "<leader>p", ":so %<CR>") -- Reload neovim configuration

