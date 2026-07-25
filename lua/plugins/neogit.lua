return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    "esmuellert/codediff.nvim",
    "folke/snacks.nvim",
  },
  cmd = "Neogit",
  keys = {
    { "<space>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
  },
}
