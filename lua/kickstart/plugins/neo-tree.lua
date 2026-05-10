-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local function gh(repo) return 'https://github.com/' .. repo end

local plugins = {
  { src = gh 'nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  gh 'nvim-lua/plenary.nvim',
  gh 'MunifTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, gh 'nvim-tree/nvim-web-devicons')
end

vim.pack.add(plugins)

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal right<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
}
