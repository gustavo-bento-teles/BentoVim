return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local has_cmatrix = vim.fn.executable("cmatrix") == 1

      opts.dashboard = opts.dashboard or {}
      opts.dashboard.sections = {}

      if has_cmatrix then
        table.insert(opts.dashboard.sections, {
          section = "terminal",
          cmd = "cmatrix -f -s",
          height = 12,
          padding = 1,
        })
      else
        opts.dashboard.preset = opts.dashboard.preset or {}
        opts.dashboard.preset.header = [[
██████╗ ███████╗███╗   ██╗████████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
██╔══██╗██╔════╝████╗  ██║╚══██╔══╝██╔═══██╗██║   ██║██║████╗ ████║
██████╔╝█████╗  ██╔██╗ ██║   ██║   ██║   ██║██║   ██║██║██╔████╔██║
██╔══██╗██╔══╝  ██║╚██╗██║   ██║   ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██████╔╝███████╗██║ ╚████║   ██║   ╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]
        table.insert(opts.dashboard.sections, { section = "header" })
      end

      table.insert(opts.dashboard.sections, { section = "keys", gap = 1, padding = 1 })
      table.insert(opts.dashboard.sections, { section = "startup" })
    end,
  },
}
