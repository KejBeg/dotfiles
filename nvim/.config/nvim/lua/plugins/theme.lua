return -- Lua with Lazy.nvim:
{
    "Mofiqul/adwaita.nvim",
    lazy = false,

    config = function()
        vim.g.adwaita_darker = false
        vim.g.adwaita_disable_cursorline = false
        vim.g.adwaita_transparent = false
        vim.cmd('colorscheme adwaita')
    end
}

