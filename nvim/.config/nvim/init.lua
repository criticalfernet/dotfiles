vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = ","

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", --latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Navigation
vim.keymap.set('n','<C-h>',':wincmd h<CR>')
vim.keymap.set('n','<C-j>',':wincmd j<CR>')
vim.keymap.set('n','<C-k>',':wincmd k<CR>')
vim.keymap.set('n','<C-l>',':wincmd l<CR>')

local nnoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end
local vnoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('v', lhs, rhs, { noremap = true, silent = true })
end

nnoremap("<C-d>","<C-d>M")
nnoremap("<C-u>","<C-u>M")
nnoremap("n","nzz")
nnoremap("N","Nzz")
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>yy", "\"+yy")
nnoremap("<leader>Y", "\"+Y")
nnoremap("<leader>p", "\"+p")
vnoremap("<leader>p", "\"+p")

nnoremap ("<Left>", ":echo 'No left for you!'<CR>")
nnoremap ("<Right>", ":echo 'No right for you!'<CR>")
nnoremap ("<Up>", ":echo 'No up for you!'<CR>")
nnoremap ("<Down>", ":echo 'No down for you!'<CR>")
vnoremap ("<Left>", ":echo 'No left for you!'<CR>")
vnoremap ("<Right>", ":echo 'No right for you!'<CR>")
vnoremap ("<Up>", ":echo 'No up for you!'<CR>")
vnoremap ("<Down>", ":echo 'No down for you!'<CR>")
nnoremap ("<PageUp>", "")
vnoremap ("<PageUp>", "")
nnoremap ("<PageDown>", "")
vnoremap ("<PageDown>", "")

require("lazy").setup("plugins")
