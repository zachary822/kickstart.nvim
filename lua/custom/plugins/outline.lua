local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'hedyhli/outline.nvim' }

vim.keymap.set('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'Toggle Outline' })
require('outline').setup {}
