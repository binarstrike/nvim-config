require "nvchad.options"

vim.filetype.add {
  pattern = {
    [".*/hypr/.*%.conf"] = "hyprlang",
  },
}
