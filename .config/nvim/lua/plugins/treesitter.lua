return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
    "python",
    "cpp",
    "typescript",
    "prolog",
    "haskell",
    "help",
    "php"
      },
      -- Install parsers synchronously (only applied to ensure_installed)
      sync_install = false,
      -- Automatically install missing parsers when entering buffer
      auto_install = true,
      highlight = {
        enable = true,
        -- Setting this to true will run :h syntax and tree-sitter at the same time.
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    }
  }
}
