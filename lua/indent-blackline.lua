--vim.opt.list = true
--vim.opt.listchars:append "eol:↴"
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "tab:⋅⋅"

require("indent_blankline").setup {
  show_trailing_blankline_ident = false,
  show_end_of_line = false,
  space_char_blankline = " ",
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
      "help",
      "terminal",
      "startify",
      "lspinfo",
  },
  show_first_indent_level = false,
}
