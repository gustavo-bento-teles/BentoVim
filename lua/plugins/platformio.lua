return {
  "anurag3301/nvim-platformio.lua",
  dependencies = {
    { "akinsho/toggleterm.nvim" },
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "nvim-lua/plenary.nvim" },
    { "folke/which-key.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
  },

  config = function()
    vim.g.pioConfig = {
      lsp = "clangd",
      clangd_source = "compiledb",
      picker_backend = "auto",
      menu_key = "<leader>\\",
      debug = false,
    }

    local ok, platformio = pcall(require, "platformio")
    if ok then
      platformio.setup(vim.g.pioConfig)
    end
  end,
}
