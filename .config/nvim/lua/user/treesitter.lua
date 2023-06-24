--------------------------------------------------------
-- Treesitter for syntax highlighting
--------------------------------------------------------

require('nvim-treesitter.configs').setup {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = { "c", "regex", "vim", "markdown", "markdown_inline", "lua", "python", "rust", "bash", "cpp",
        "json", "json5", "make", "toml" },

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing
    ignore_install = {},

    autopairs = {
        enable = true
    },

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        autopairs = {
            enabled = true,
        },

        indent = { enable = true, disable = { "python", "css" } },

        context_commentstring = {
            enable = true,
            enable_autocmd = false,
        },

        autotag = {
            enable = true,
            disable = { "xml" },
        },

        rainbow = {
            enable = true,
            colors = {
                "Gold",
                "Orchid",
                "DodgerBlue",
                -- "Cornsilk",
                -- "Salmon",
                -- "LawnGreen",
            },
            disable = { "html" },
        },
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}
