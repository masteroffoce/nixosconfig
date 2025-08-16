require("config.lazy")

vim.keymap.set({"n", "v", "o"}, "q", "q")
vim.keymap.set({"n", "v", "o"}, "w", "w")
vim.keymap.set({"n", "v", "o"}, "f", "e")
vim.keymap.set({"n", "v", "o"}, "p", "r")
vim.keymap.set({"n", "v", "o"}, "b", "t")
vim.keymap.set({"n", "v", "o"}, "j", "y")
vim.keymap.set({"n", "v", "o"}, "l", "u")
vim.keymap.set({"n", "v", "o"}, "u", "i")
vim.keymap.set({"n", "v", "o"}, "y", "o")
vim.keymap.set({"n", "v", "o"}, ";", "p")
vim.keymap.set({"n", "v", "o"}, "a", "a")
vim.keymap.set({"n", "v", "o"}, "r", "s")
vim.keymap.set({"n", "v", "o"}, "s", "d")
vim.keymap.set({"n", "v", "o"}, "t", "f")
vim.keymap.set({"n", "v", "o"}, "g", "g")
vim.keymap.set({"n", "v", "o"}, "m", ";")
vim.keymap.set({"n", "v", "o"}, "n", "h")
vim.keymap.set({"n", "v", "o"}, "e", "j")
vim.keymap.set({"n", "v", "o"}, "i", "k")
vim.keymap.set({"n", "v", "o"}, "o", "l")
vim.keymap.set({"n", "v", "o"}, "z", "<")
vim.keymap.set({"n", "v", "o"}, "x", "z")
vim.keymap.set({"n", "v", "o"}, "c", "x")
vim.keymap.set({"n", "v", "o"}, "d", "c")
vim.keymap.set({"n", "v", "o"}, "v", "v")
vim.keymap.set({"n", "v", "o"}, "\\", "b")
vim.keymap.set({"n", "v", "o"}, "k", "n")
vim.keymap.set({"n", "v", "o"}, "h", "m")

vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = false
