require("tanay")

-- Enables Line numbers
vim.opt.number = true

-- Makes sure you are CD'ed into right directory
vim.api.nvim_command("autocmd VimEnter * silent! lcd %:p:h")

-- Set Indentaiton
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
    
