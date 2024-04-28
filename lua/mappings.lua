require "nvchad.mappings"

local function cmd(c)
  return "<cmd>" .. c .. "<cr>"
end

local key_bindings = {
  {
    mode = { "i", "v", "n" },
    mappings = {
      ["<C-d>"] = { "<ESC>viw", opts = { desc = "Enter visual mode and select inner word" } },
      ["<F2>"] = { cmd "lua vim.lsp.buf.rename()", opts = { desc = "Rename variable" } },
    },
  },
  {
    mode = "n",
    mappings = {
      [";"] = { ":", opts = { desc = "Enter command mode", nowait = true } },
      ["\\"] = { "i", opts = { desc = "Enter insert mode" } },
      ["|"] = { "v", opts = { desc = "Enter visual mode" } },
    },
  },
  {
    mode = { "i", "n" },
    mappings = {
      ["<C-z>"] = { "g-", opts = { desc = "Undo" } },
      ["<C-y>"] = { "g+", opts = { desc = "Redo" } },
    },
  },
  {
    mode = { "v", "n" },
    mappings = {
      ["<leader><Tab>"] = { cmd "tabnext", opts = { desc = "Next tab" } },
    },
  },
}

for i in ipairs(key_bindings) do
  local keymap = key_bindings[i]
  for k, m in pairs(keymap["mappings"]) do
    vim.keymap.set(keymap["mode"], k, m[1], m["opts"])
  end
end
