--[[
  Reference for how Neovim integrates Lua:
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

  The very first thing you should do is to run the command `:Tutor` in Neovim.

  Next, run AND READ `:help`.
    This will open up a help window with some basic information
    about reading, navigating and searching the builtin help documentation.
    This should be the first place you go to look when you're stuck or confused
    with something. It's one of my favorite Neovim features.

    A keymap "<space>sh" to [s]earch the [h]elp documentation,
    which is very useful when you're not exactly sure of what you're looking for.

  If you experience any errors, run `:checkhealth` for more info.
--]]

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true
require 'options'
require 'keymaps'
require 'lazy-bootstrap'
require 'lazy-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
