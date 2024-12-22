return {
  'ibhagwan/fzf-lua',
  cmd = 'FzfLua',
  keys = {
    {
      '<leader>,',
      '<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>',
      desc = 'Switch Buffer',
    },
    { '<leader>:', '<cmd>FzfLua command_history<cr>', desc = 'Command History' },
    { '<leader>fb', '<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>', desc = 'Buffers' },
    { '<leader>fc', '<cmd>FzfLua highlights<cr>', desc = 'Highlights' },
    { '<leader>fd', '<cmd>FzfLua lsp_document_diagnostics<cr>', desc = 'Document diagnostics' },
    { '<leader>fD', '<cmd>FzfLua lsp_workspace_diagnostics<cr>', desc = 'Workspace diagnostics' },
    { '<leader>ff', '<cmd>FzfLua files<cr>', desc = 'Find files' },
    { '<leader>fg', '<cmd>FzfLua live_grep_glob<cr>', desc = 'Grep' },
    { '<leader>fg', '<cmd>FzfLua grep_visual<cr>', desc = 'Grep', mode = 'x' },
    { '<leader>fh', '<cmd>FzfLua help_tags<cr>', desc = 'Help' },
    { '<leader>fr', '<cmd>FzfLua oldfiles<cr>', desc = 'Recent' },

    { '<leader>gc', '<cmd>FzfLua git_commits<CR>', desc = 'Commits' },
    { '<leader>gs', '<cmd>FzfLua git_status<CR>', desc = 'Status' },
  },
  opts = function()
    return {
      defaults = {
        formatter = 'path.dirname_first',
      },
      oldfiles = {
        include_current_session = true,
      },
      previewers = {
        builtin = {
          syntax_limit_b = 1024 * 100, -- 100KB
        },
      },
      grep = {
        rg_glob = true,
        glob_flag = '--iglob',
        glob_separator = '%s%-%-',
      },
    }
  end,
  config = function(_, opts)
    require('fzf-lua').setup(opts)
  end,
}
