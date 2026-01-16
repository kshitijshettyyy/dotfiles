return {
	"kdheepak/lazygit.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "LazyGit",
	init = function()
		-- floating, Telescope-like
		vim.g.lazygit_floating_window_use_plenary = 1
		vim.g.lazygit_floating_window_scaling_factor = 0.8
		vim.g.lazygit_use_neovim_remote = 1
	end,
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit (floating)" },
	},
}
