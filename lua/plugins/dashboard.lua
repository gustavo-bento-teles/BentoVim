return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.dashboard = opts.dashboard or {}
      opts.dashboard.sections = {}

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

      table.insert(opts.dashboard.sections, { section = "keys", gap = 1, padding = 1 })
      table.insert(opts.dashboard.sections, { section = "startup" })
    end,
  },
}
