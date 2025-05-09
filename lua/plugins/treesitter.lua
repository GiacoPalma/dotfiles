return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
    	local configs = require("nvim-treesitter.configs")
        configs.setup({
            prefer_git = false,
            ensure_installed = {
			"vimdoc",
			"javascript",
			"java",
			"c_sharp",
			"cpp",
			"css",
			"lua",
			"vim",
			"powershell",
			"python",
			"groovy",
			"kotlin",
			"html",
			"javadoc",
			"json",
			"markdown",
			"razor",
			"scss",
			"yaml"
		},
		sync_install = false,
		auto_install = true,
        indent = {
            enable = true
        },
		highlight = {
			enable = true,
			-- set to true if syntax needs to be enabled for indentation.
			-- can slow down editor, can also be a list of languages instead of true.
			additional_vim_regex_highlighting = false
		},
	})
    end,
}
