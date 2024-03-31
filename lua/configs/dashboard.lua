require('dashboard').setup({
  theme = 'hyper',
  config = {
    header = {
      '          ▀████▀▄▄              ▄█ ',
      '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
      '    ▄        █          ▀▀▀▀▄  ▄▀  ',
      '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
      '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
      '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
      '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
      '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
      '   █   █  █      ▄▄           ▄▀   ',
      '',
      '',
    }, --your header
    shortcut = {
      { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
    },
    footer = {
      '',
      '',
      '🥓 Charlie Bacon\'s IDE'
    }  --your footer
  },
})
