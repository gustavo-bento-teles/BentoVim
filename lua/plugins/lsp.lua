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
      },
    },
  },

  {
    "mason-org/mason.nvim",

    opts = {
      ensure_installed = {
        "clangd",
        "csharp-language-server",
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
      },
    },
  },
}
