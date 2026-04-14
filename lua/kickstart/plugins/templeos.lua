return {
  'phacenet/templeos.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'templeos'
    vim.api.nvim_create_autocmd('ColorScheme', {
      callback = function()
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeReplace', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineFilename', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineFileinfo', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineDevinfo', { bg = '#0000aa', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'MiniStatuslineInactive', { bg = '#0000aa', fg = '#ffffff' })
      end,
    })
    -- Trigger immediately for the current colorscheme
    vim.cmd 'doautocmd ColorScheme'
  end,
}
