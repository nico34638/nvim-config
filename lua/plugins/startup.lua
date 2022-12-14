local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  > New file", ":ene<CR>"),
    dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
    dashboard.button("r", "  > Find word", ":Telescope live_grep<CR>"),
    dashboard.button("t", "פּ  > File explorer", ":NvimTreeOpen<CR>"),
    dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h<CR>"),
    dashboard.button("u", "  > Update plugins", ":PackerUpdate<CR>"),
    dashboard.button("g", "  > Neogit", ":Neogit<CR>"),
    dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    return total_plugins .. " plugins loaded"
end

dashboard.section.footer.val = footer()

-- Send config to alpha
alpha.setup(dashboard.opts)
