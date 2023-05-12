require("telescope").setup({
	pickers = {
		buffers = {
			mappings = {
				n = {
					["dd"] = require("telescope.actions").delete_buffer,
				},
			},
		},
	},
	defaults = {
		mappings = {
			n = {
				["q"] = require("telescope.actions").close,
			},
		},
	},
})
