vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move line up or down in Visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- join line and keep cursor position

-- move line up or down in Normal with the cursor in the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- make the cursor in the center when jumping search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- paste without removing the text from the register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- tmux new session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- call lsp formatter
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- move between quickfix and location list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word that the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make this file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- remap for colemak, only remap the navigation key so that it's in the homerow
-- Normal mode mappings
vim.api.nvim_set_keymap('n', 'n', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'e', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'e', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'i', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'l', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'm', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'h', 'm', { noremap = true, silent = true })

-- Visual mode mappings
vim.api.nvim_set_keymap('v', 'n', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'e', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'e', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'i', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'l', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'm', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'h', 'm', { noremap = true, silent = true })

-- Operator-pending mode mappings
vim.api.nvim_set_keymap('o', 'n', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'j', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'e', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'k', 'e', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'i', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'l', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'm', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'h', 'm', { noremap = true, silent = true })
