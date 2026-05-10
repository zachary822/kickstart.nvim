local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'stevearc/oil.nvim' }
require('oil').setup {}
