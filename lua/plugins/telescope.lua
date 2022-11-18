local telescope = require("telescope")
local wk = require("which-key")

telescope.setup({})
telescope.load_extension("fzf")

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

wk.register({
    name = "fuzzy finder (telescope)",
    f = { "<cmd>Telescope find_files<cr>", "files" },
    g = { "<cmd>Telescope git_files<cr>", "git files" },
    r = { "<cmd>Telescope live_grep<cr>", "grep" },
    b = { "<cmd>Telescope buffers<cr>", "buffers" },
    m = { "<cmd>Telescope marks<cr>", "bookmarks" },
    c = { "<cmd>Telescope colorscheme<cr>", "colorscheme" },
    h = { "<cmd>Telescope oldfiles<cr>", "history" },
}, {
    prefix = "<leader>f",
    noremap = true,
})
