-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		signs_staged = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},

		-- 🔹 THIS IS THE IMPORTANT PART
		current_line_blame = true,

		current_line_blame_opts = {
			virt_text = false, -- ❌ do NOT show inline
			delay = 0, -- update immediately on hjkl
			ignore_whitespace = true,
		},

		current_line_blame_formatter = "<author> • <author_time:%Y-%m-%d %H:%M>",
	},
}
