return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1

    -- Additional DBUI settings
    vim.g.db_ui_show_help = 0
    vim.g.db_ui_win_position = 'left'
    vim.g.db_ui_use_nvim_notify = 1

    -- Save DBUI layout to make it persistent across sessions
    vim.g.db_ui_save_location = vim.fn.stdpath 'data' .. '/db_ui_save.vim'

    -- Optional: Set a default database connection
    -- vim.g.dbs = { your_db = 'mysql://user:password@host:port/database' }

    -- Keymaps
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'sql', 'mysql', 'plsql' },
      callback = function()
        vim.keymap.set('n', '<leader>db', '<Cmd>DBUIToggle<CR>', { buffer = true, desc = 'Toggle DBUI' })
        vim.keymap.set('n', '<leader>df', '<Cmd>DBUIFindBuffer<CR>', { buffer = true, desc = 'DBUI Find Buffer' })
        vim.keymap.set('n', '<leader>dr', '<Cmd>DBUIRenameBuffer<CR>', { buffer = true, desc = 'DBUI Rename Buffer' })
        vim.keymap.set('n', '<leader>dl', '<Cmd>DBUILastQueryInfo<CR>', { buffer = true, desc = 'DBUI Last Query Info' })
      end,
    })
  end,
  config = function()
    -- Optional: Add any additional configuration here
    -- This function runs after the plugin is loaded
  end,
}
