local lualine = require'lualine'

lualine.setup({
  options = {
    icons_enabled = false,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress', 'location'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {'location'},
    lualine_y = {'progress'},
    lualine_z = {}
  },
  tabline = {lualine_a = {{
    'buffers',
    show_filename_only = true,
    hide_filename_extension = false,
    show_modified_status = true,
    mode = 0,
    max_length = vim.o.columns * 2 / 3,
    filetype_names = {
      TelescopePrompt = 'Telescope',
      dashboard = 'Dashboard',
      packer = 'Packer',
      fzf = 'FZF',
      alpha = 'Alpha'
    },
    buffers_color = {
      active = 'lualine_b_normal',
      inactive = 'lualine_b_inactive',
    },
    symbols = {
      modified = '[+]',
      alternate_file = '#',
      directory =  '',
    }
  }}},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})

