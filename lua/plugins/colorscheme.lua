return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("solarized").setup({
        variant = "winter", -- "spring" | "summer" | "autumn" | "winter" (default)
      })
      vim.cmd.colorscheme("solarized")
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("solarized-osaka").setup()
      -- vim.cmd.colorscheme("solarized-osaka")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          bold = false,
          italic = false,
          transparency = false,
        },
        highlight_groups = {
          StatusLineTerm = { bg = "none" },
        },
      })
      -- vim.cmd("colorscheme rose-pine-moon")
    end,
  },
}
