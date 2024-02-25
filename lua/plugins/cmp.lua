return {
  {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      require("cmp").setup({
        sources = {
          { name = "nvim_lsp" },
        }
      })
    end
  },
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
      -- https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#add-snippets
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
          ['<TAB>'] = cmp.mapping.select_next_item(cmp_select),
          ['<S-TAB>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
