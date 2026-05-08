return {
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
    vim.cmd("colorscheme rose-pine-moon")
  end,
}
