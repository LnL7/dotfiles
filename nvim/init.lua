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
-- vim.opt.colorcolumn = "80"

vim.opt.list = true
vim.opt.listchars = { tab = "»·", trail = "·", extends = "⟩", precedes = "⟨" }

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.splitright = true
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

vim.keymap.set({"n", "v"}, "<Leader>c", [["+y]])
vim.keymap.set({"n", "v"}, "<Leader>v", [["+p]])

vim.keymap.set("n", "<Leader>q", function ()
  vim.cmd("cclose")
end)

vim.keymap.set("n", "<Leader>d", function ()
  local config = vim.diagnostic.config()
  vim.diagnostic.config({virtual_text = not config.virtual_text})
end)

vim.keymap.set("n", "<Leader>$", function ()
  local lnum = vim.fn.line(".")
  local line = vim.fn.getline(".")
  if string.sub(line, 1, #"$ ") == "$ " then
    vim.cmd("norm 0jd}k")
    vim.cmd(":r! " .. string.sub(line, 2) .. " | sed 's/^/    /'")
    vim.cmd(":" .. lnum)
    vim.cmd("norm o")
    vim.cmd("norm k")
  end
end)

vim.keymap.set("n", "!<CR>", function ()
  vim.cmd("Tmux send-keys -t .+ C-\\\\")
  vim.cmd("Tmux send-keys -t .+ C-a C-k C-l Up")
  vim.cmd("Tmux send-keys -t .+ Enter")
end)

-- vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
--   pattern = {"lua"},
--   callback = function(args)
--     vim.keymap.set(..., { buffer = args.buf })
--   end
-- })

local plugins = "plugins";

require("lazy").setup(plugins, {
  dev = {
    path = "~/.config/nvim/overrides",
  },
})
