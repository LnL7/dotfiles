vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/tmp/undo"

vim.opt.backspace = { "indent", "start" }
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.colorcolumn = "120"

vim.opt.list = true
vim.opt.listchars = { tab = "  ", trail = "·", extends = "⟩", precedes = "⟨" }

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.py"},
  group = vim.api.nvim_create_augroup("lnl-python-listchars", { clear = true }),
  callback = function()
    vim.opt.listchars = { tab = "»·" }
  end
})

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 8

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

vim.g.mapleader = " "

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "s", "S")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "//", ":nohlsearch<CR>")
vim.keymap.set("c", "%%", "<C-r>=expand('%:h') . '/'<CR>")

vim.keymap.set({"n", "v"}, "<M-c>", [["+y]])
vim.keymap.set({"n", "v"}, "<M-v>", [["+p]])
vim.keymap.set({"i"}, "<M-v>", [[<Esc>"+p]])

vim.keymap.set("n", "<Leader>q", "copen")

vim.api.nvim_create_autocmd({"TextYankPost"}, {
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = "plugins";
require("lazy").setup(plugins, {
  dev = {
    path = "~/.config/nvim/overrides",
  },
})
