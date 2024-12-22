return {
  'echasnovski/mini.icons',
  lazy = true,
  opts = {
    file = {
      ['.keep'] = { glyph = '󰊢', hl = 'MiniIconsGrey' },
      ['devcontainer.json'] = { glyph = '', hl = 'MiniIconsAzure' },
    },
    filetype = {
      dotenv = { glyph = '', hl = 'MiniIconsYellow' },
    },
  },
  init = function()
    require('mini.icons').mock_nvim_web_devicons()
  end,
}
