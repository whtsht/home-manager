local function set_keymap(mode, lhs, rhs, desc)
  local opts = { noremap = true, silent = true, desc = desc or "" }
  vim.keymap.set(mode, lhs, rhs, opts)
end

set_keymap("i", "jj", "<ESC>", "Exit insert mode")
set_keymap("n", "<leader>w", ":w<CR>", "Save file")
set_keymap("n", "<leader>qq", ":qa<CR>", "Quit")
set_keymap("n", "<leader>n", ":noh<cr>", "Clear search highlight")
set_keymap("n", "<leader>ys", '/<C-r>"<cr>', "Search yanked text")
set_keymap("n", "<leader>yp", ":YankFilePath<cr>", "Yank file path")
set_keymap("n", "<leader>yn", ":YankFileName<cr>", "Yank file name")
set_keymap("n", "<leader>c", "<C-^>", "Switch to previous file")
set_keymap("n", "j", "gj", "Move down visual line")
set_keymap("n", "k", "gk", "Move up visual line")
set_keymap("n", "H", "^", "Move to start of line")
set_keymap("n", "L", "$", "Move to end of line")

-- Quickfix navigation
set_keymap("n", "<leader>j", ":cnext<CR>", "Next quickfix item")
set_keymap("n", "<leader>k", ":cprev<CR>", "Previous quickfix item") 