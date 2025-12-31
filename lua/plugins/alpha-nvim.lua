--[[
Alpha Dash is used as the dashboard when
nvim is opened without a file
--]]

return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "RchrdAriza/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        local time = os.date("%H:%M")
        local date = os.date("%a %d %b")
        local v = vim.version()
        local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch
        local stats = require("lazy").stats()
        local cputime = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        local ms = cputime .. " ms"
        local statistics = "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
        local cwd = os.cwd

        -- Set header
        dashboard.section.header.val = {
            "       ███╗░░██╗██╗░░░██╗██╗███╗░░░███╗",
            "       ████╗░██║██║░░░██║██║████╗░████║",
            "       ██╔██╗██║╚██╗░██╔╝██║██╔████╔██║",
            "       ██║╚████║░╚████╔╝░██║██║╚██╔╝██║",
            "       ██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║",
            "       ╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
            "",
            "                 █▀█ █▄░█  █▀▄▀█ █▄█            ",
            "                 █▄█ █░▀█  █░▀░█ ░█░            ",
            "",
            "       ░██╗░░░░░░░██╗░█████╗░██╗░░░██╗",
            "       ░██║░░██╗░░██║██╔══██╗╚██╗░██╔╝",
            "       ░╚██╗████╗██╔╝███████║░╚████╔╝░",
            "       ░░████╔═████║░██╔══██║░░╚██╔╝░░",
            "       ░░╚██╔╝░╚██╔╝░██║░░██║░░░██║░░░",
            "       ░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝░░░╚═╝░░░",
        }

        dashboard.section.buttons.val = {
            dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "󰮗   Find file", ":cd $HOME | Telescope find_files hidden=true<CR>"),
            dashboard.button("e", "   File Explorer", ":cd $PWD | NvimTreeFocus<CR>"),
            dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("N", "   Notes", ":cd $HOME/notes | :e ~/notes/<CR>"),
            dashboard.button("c", "   Nvim Configuration", ":cd $HOME/.config/nvim | :e ~/.config/nvim/init.lua<CR>"),
            dashboard.button("R", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
            dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
        }

        function centerText(text, width)
            local totalPadding = width - #text
            local leftPadding = math.floor(totalPadding / 2)
            local rightPadding = totalPadding - leftPadding
            return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
        end

        dashboard.section.footer.val = {
            centerText(date, 50),
            centerText(time, 50),
            centerText(version, 50),
            centerText(statistics, 50),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
