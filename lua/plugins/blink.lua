return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none",
      ["<C-g>"] = { "hide" },
      ["<C-y>"] = { "select_and_accept" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },
      ["<S-tab>"] = { "select_prev", "fallback_to_mappings" },
      ["<tab>"] = { "select_next", "fallback_to_mappings" },

      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },
    cmdline = {
      keymap = { preset = "inherit" },
    },
    completion = {
      ghost_text = {
        enabled = false,
      },
    },
  },
}
