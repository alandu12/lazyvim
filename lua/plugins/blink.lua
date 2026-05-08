return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none",
      ["<C-f>"] = { "hide" },
      ["<C-y>"] = { "select_and_accept" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-;>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-k>"] = { "select_next", "fallback_to_mappings" },
      ["<S-tab>"] = { "select_prev", "fallback_to_mappings" },
      ["<tab>"] = { "select_next", "fallback_to_mappings" },

      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },
  },
}
