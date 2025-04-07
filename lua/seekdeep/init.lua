local M = {}

function M.say_hello()
  local buf = vim.api.nvim_create_buf(false, true)
  local width = 30
  local height = 1

  local opts = {
    style = "minimal",
    relative = "editor",
    width = width,
    height = height,
    row = (vim.o.lines - height) / 2,
    col = (vim.o.columns - width) / 2,
    border = "rounded",
  }

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "Hello World!" })
  local win = vim.api.nvim_open_win(buf, true, opts)

  -- Close on <Esc>
  vim.api.nvim_buf_set_keymap(buf, "n", "<Esc>", "<cmd>bd!<CR>", { noremap = true, silent = true })
end

return M
