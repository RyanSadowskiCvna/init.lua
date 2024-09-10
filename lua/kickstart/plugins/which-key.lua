return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {
        { '', desc = '<leader>t_', hidden = true },
        { '', desc = '<leader>h_', hidden = true },
        { '', group = 'Git [H]unk' },
        { '', group = '[R]ename' },
        { '', group = '[S]earch' },
        { '', desc = '<leader>r_', hidden = true },
        { '', desc = '<leader>s_', hidden = true },
        { '', desc = '<leader>d_', hidden = true },
        { '', desc = '<leader>c_', hidden = true },
        { '', group = '[W]orkspace' },
        { '', group = '[D]ocument' },
        { '', desc = '<leader>w_', hidden = true },
        { '', group = '[C]ode' },
        { '', group = '[T]oggle' },
      }
      -- visual mode
      require('which-key').add {
        { '', group = 'Git [H]unk', mode = 'v' },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
