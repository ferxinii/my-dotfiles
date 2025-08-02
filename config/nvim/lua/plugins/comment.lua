return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = true --automatic setup, runs require('Comment').setup()
}
