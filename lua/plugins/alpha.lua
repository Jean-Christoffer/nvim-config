return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope.nvim", -- for the buttons below
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- ==== HEADER (kept from your setup) ====
		dashboard.section.header.val = {
			[[                                                    ]],
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
			[[                                                    ]],
			[[  	             .^~!777!~:                       ]],
			[[             .7Y?~^::::::::::~7JJ^                  ]],
			[[          .J?^::::::::::::::::::::!5~               ]],
			[[        .P^::::::^?:::::::::~?:::::::JJ             ]],
			[[       P^:::::::!@@@:::::::?@@@::::::::5^           ]],
			[[      G:::::::::&@@@?::::::@@@@~::::::::~J          ]],
			[[     G::::::::::@@@@5::::::@@@@7::::::::::J         ]],
			[[    B:::::::::::G@@@!::::::&@@@^::::::::::7.        ]],
			[[    B::::::::::::@@#:::::::^@@G::::::::::::B        ]],
			[[   B::::::::::::::^::::::::::^:::::::::::::B        ]],
			[[   B::::B@BJ::::::::::::::::::::::::P@BJ:::B        ]],
			[[    B::::YB:::::::::::::::::::::::::^@:::::B        ]],
			[[    B:::::@7::::::::::::::::::::::::@7::::7.        ]],
			[[     G:::::#P:::::::::::::::::::::~@!::::^J         ]],
			[[      G:::::!@5:::::::::::::::::!&P:::::~J          ]],
			[[       5^:::::^5&G7^::::::::~Y#B7::::::Y:           ]],
			[[        .5^:::::::^7YPGBBG5?~::::::::??             ]],
			[[          ~Y!::::::::::::::::::::^J?                ]],
			[[             :?J7^::::::::::^~?J!.                  ]],
			[[                  .^~!777!~:             		      ]],
		}

		-- ==== BUTTONS ====
		local function btn(sc, txt, cmd)
			return dashboard.button(sc, txt, cmd)
		end

		dashboard.section.buttons.val = {
			btn("e", "  New file", ":ene <BAR> startinsert<CR>"),
			btn("f", "  Find file", ":Telescope find_files<CR>"),
			btn("g", "󰷾  Live grep", ":Telescope live_grep<CR>"),
			btn("r", "  Recent files", ":Telescope oldfiles<CR>"),
			btn("p", "  Projects (cwd)", ":Telescope find_files cwd=`pwd`<CR>"),
			btn("s", "  Settings (init)", ":edit $MYVIMRC<CR>"),
			btn("l", "󰒲  Lazy (plugins)", ":Lazy<CR>"),
			btn("q", "  Quit", ":qa<CR>"),
		}

		-- Center things a bit tighter
		dashboard.opts.layout = {
			{ type = "padding", val = 2 },
			dashboard.section.header,
			{ type = "padding", val = 1 },
			dashboard.section.buttons,
			{ type = "padding", val = 1 },
			dashboard.section.footer,
		}

		-- ==== FOOTER: show Lazy stats when ready ====
		dashboard.section.footer.val = "⚡ loading…"
		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyDone",
			callback = function()
				local ok, lazy = pcall(require, "lazy")
				if not ok then
					return
				end
				local stats = lazy.stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = ("⚡ Neovim loaded %d plugins in %sms"):format(stats.count, ms)
				pcall(vim.cmd.AlphaRedraw)
			end,
		})

		-- Final setup
		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)

		-- Auto-open on `nvim` with no file args
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				if vim.fn.argc() == 0 and not vim.bo.modified then
					require("alpha").start(true)
				end
			end,
		})
	end,
}
