return {
  "https://github.com/swaits/zellij-nav.nvim",
  config = function()
    require("zellij-nav").setup()
    vim.keymap.set("n", "<c-h>", "<cmd>ZellijNavigateLeft<cr>", { desc = "Navigate left" })
    vim.keymap.set("n", "<c-n>", "<cmd>ZellijNavigateDown<cr>", { desc = "Navigate down" })
    vim.keymap.set("n", "<c-e>", "<cmd>ZellijNavigateUp<cr>", { desc = "Navigate up" })
    vim.keymap.set("n", "<c-i>", "<cmd>ZellijNavigateRight<cr>", { desc = "Navigate right" })
  end,
}
