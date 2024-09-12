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
      default_file_explorer = true,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<C-s>'] = 'actions.select_vsplit',
        ['<C-h>'] = 'actions.select_split',
        ['<C-t>'] = 'actions.select_tab',
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = 'actions.close',
        ['<C-l>'] = 'actions.refresh',
        ['-'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['~'] = 'actions.tcd',
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        ['g.'] = 'actions.toggle_hidden',
      },
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
    vim.keymap.set('n', '<leader>ex', function()
      require('oil').open()
    end, { desc = 'Open Oil file explorer' })

    vim.keymap.set('n', '-', function()
      if vim.bo.filetype == 'oil' then
        require('oil.actions').parent.callback()
      else
        require('oil').open()
      end
    end, { desc = 'Open parent directory or Oil' })
  end,
}
