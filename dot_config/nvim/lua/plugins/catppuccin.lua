return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme('catppuccin')
  end,
  opts = {
    transparent_background = false,
    integrations = {
      bufferline = false,
      blink_cmp = true,
      cmp = false,
      dap = true,
      dashboard = false,
      dropbar = false,
      fidget = false,
      flash = true,
      fzf = true,
      gitsigns = true,
      indent_blankline = false,
      lsp_trouble = true,
      mason = true,
      markdown = false,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { 'undercurl' },
          hints = { 'undercurl' },
          warnings = { 'undercurl' },
          information = { 'undercurl' },
        },
      },
      notify = false,
      render_markdown = true,
      semantic_tokens = true,
      snacks = true,
      telescope = {
        enabled = true,
      },
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
}
