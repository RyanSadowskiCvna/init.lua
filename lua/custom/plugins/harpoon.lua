return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    -- Harpoon keymaps
    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to Harpoon' })
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Toggle Harpoon quick menu' })

    -- Navigate to files in Harpoon list
    vim.keymap.set('n', '<C-h>', function()
      ui.nav_file(1)
    end, { desc = 'Navigate to Harpoon file 1' })
    vim.keymap.set('n', '<C-t>', function()
      ui.nav_file(2)
    end, { desc = 'Navigate to Harpoon file 2' })
    vim.keymap.set('n', '<C-n>', function()
      ui.nav_file(3)
    end, { desc = 'Navigate to Harpoon file 3' })
    vim.keymap.set('n', '<C-s>', function()
      ui.nav_file(4)
    end, { desc = 'Navigate to Harpoon file 4' })

    -- Optional: Set up Harpoon options
    require('harpoon').setup {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { 'harpoon' },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,
      },
    }
  end,
}
