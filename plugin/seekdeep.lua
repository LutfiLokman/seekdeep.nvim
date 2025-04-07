vim.api.nvim_create_user_command("HelloWorld", function()
  require("helloworld").say_hello()
end, { desc = "Say Hello World in a floating window" })
