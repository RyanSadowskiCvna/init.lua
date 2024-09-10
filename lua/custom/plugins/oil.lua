return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local oil = require 'oil'
    oil.setup {
      -- Oil-specific setup options
    }

    -- Set up the custom icons
    if not vim.g.have_nerd_font then
      oil.setup_custom_icons {
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      }
    end

    -- Add Oil-specific keymaps
    vim.keymap.set('n', '<leader>ex', '<cmd>Oil<CR>', { desc = 'Open Oil file explorer' })
  end,
}
