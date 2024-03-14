return {
	"jakewvincent/mkdnflow.nvim",
	config = function()
		require("mkdnflow").setup({
			lazy = false,
			modules = {
				bib = true,
				buffers = true,
				conceal = true,
				cursor = true,
				folds = false,
				links = true,
				lists = true,
				maps = true,
				paths = true,
				tables = true,
				yaml = true,
				cmp = true,
			},
			filetypes = { md = true, rmd = true, markdown = true },
			create_dirs = true,
			perspective = {
				priority = "first",
				fallback = "current",
				root_tell = false,
				nvim_wd_heel = false,
				update = false,
			},
			wrap = true,
			bib = {
				default_path = nil,
				find_in_root = true,
			},
			silent = false,
			cursor = {
				jump_patterns = nil,
			},
			links = {
				style = "wiki",
				name_is_source = true,
				conceal = true,
				context = 0,
				implicit_extension = "md",
				transform_implicit = false,
				transform_explicit = function(text)
					text = text:gsub(" ", "-")
					text = text:lower()
					text = os.date("%Y-%m-%d_") .. text
					return text
				end,
			},
			new_file_template = {
				use_template = false,
				placeholders = {
					before = {
						title = "link_title",
						date = "os_date",
					},
					after = {},
				},
				template = "# {{ title }}",
			},
			to_do = {
				symbols = { " ", "-", "X" },
				update_parents = true,
				not_started = " ",
				in_progress = "-",
				complete = "X",
			},
			tables = {
				trim_whitespace = true,
				format_on_move = true,
				auto_extend_rows = false,
				auto_extend_cols = false,
				style = {
					cell_padding = 1,
					separator_padding = 1,
					outer_pipes = false,
					mimic_alignment = true,
				},
			},
			yaml = {
				bib = { override = false },
			},
			mappings = {
				MkdnEnter = { { "n", "v" }, "<CR>" },
				MkdnTab = false,
				MkdnSTab = false,
				MkdnNextLink = { "n", "<Tab>" },
				MkdnPrevLink = { "n", "<S-Tab>" },
				MkdnNextHeading = { "n", "]]" },
				MkdnPrevHeading = { "n", "[[" },
				MkdnGoBack = { "n", "<BS>" },
				MkdnGoForward = { "n", "<Del>" },
				MkdnCreateLink = false, -- see MkdnEnter
				MkdnCreateLinkFromClipboard = { { "n", "v" }, "<leader>p" }, -- see MkdnEnter
				MkdnFollowLink = false, -- see MkdnEnter
				MkdnDestroyLink = { "n", "<M-CR>" },
				MkdnTagSpan = { "v", "<M-CR>" },
				MkdnMoveSource = { "n", "<F2>" },
				MkdnYankAnchorLink = { "n", "yaa" },
				MkdnYankFileAnchorLink = { "n", "yfa" },
				MkdnIncreaseHeading = { "n", "+" },
				MkdnDecreaseHeading = { "n", "-" },
				MkdnToggleToDo = { { "n", "v" }, "<C-Space>" },
				MkdnNewListItem = false,
				MkdnNewListItemBelowInsert = { "n", "o" },
				MkdnNewListItemAboveInsert = { "n", "O" },
				MkdnExtendList = false,
				MkdnUpdateNumbering = { "n", "<leader>nn" },
				MkdnTableNextCell = { "i", "<Tab>" },
				MkdnTablePrevCell = { "i", "<S-Tab>" },
				MkdnTableNextRow = false,
				MkdnTablePrevRow = { "i", "<M-CR>" },
				MkdnTableNewRowBelow = { "n", "<leader>ir" },
				MkdnTableNewRowAbove = { "n", "<leader>iR" },
				MkdnTableNewColAfter = { "n", "<leader>ic" },
				MkdnTableNewColBefore = { "n", "<leader>iC" },
				MkdnFoldSection = false,
				MkdnUnfoldSection = false,
			},
		})

		local cmp = require("cmp")
		cmp.setup({
			sources = {
				{ name = "nvim_lsp_signature_help" },
				{ name = "path", max_item_count = 4 },
				{ name = "nvim_lsp", max_item_count = 4 },
				{ name = "buffer", keyword_length = 3 },
				{ name = "luasnip", keyword_length = 2 },
			},
			preselect = "item",
			completion = {
				-- autocomplete = false,
				completeopt = "menu,menuone,noinsert",
			},
			mapping = {
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				-- ["<Tab>"] = cmp_action.tab_complete(),
				-- ["<Tab>"] = cmp.mapping.complete(),
			},
		})
	end,
}
