return {
  {
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
          },
        },

        csharp_ls = {},
        omnisharp = false,
        html = {},
        tailwindcss = {},
        pyright = {},
      },
    },
  },

  {
    "mason-org/mason.nvim",

    opts = {
      ensure_installed = {
        "clangd",
        "csharp-language-server",
        "pyright",
        "tailwindcss-language-server",
        "css-lsp",
        "prettierd",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",

    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "c_sharp",
        "python",
        "html",
        "htmldjango",
        "css",
        "javascript",
        "json",
        "yaml",
        "toml",
        "bash",
      },
    },
  },
}
