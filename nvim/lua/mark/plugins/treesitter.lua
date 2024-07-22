return {
"nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
      dependencies = {
	          "windwp/nvim-ts-autotag",
		    },
		      config = function()


			      local treesitter = require("nvim-treesitter.configs")
			       treesitter.setup({ -- enable syntax highlighting
			             highlight = {
					            
					     enable = true,
					
				     },
							         
				     -- enable indentation
				
				     indent = { enable = true },
				
				     -- enable autotagging (w/ nvim-ts-autotag plugin)
				
				     autotag = {
				
					     enable = true,
					
				     },
			 ensure_installed = {
				         
				 "json",
				
				 "javascript",
				

				 "typescript",
				
				 "tsx",
				
				 "yaml",
				
				 "html",
				
				 "css",
				
				 "prisma",
				
				 "markdown",
				
				 "markdown_inline",
				
				 "svelte",
				
				 "graphql",
				
				 "bash",
				
				 "lua",
				
				 "vim",
				
				 "dockerfile",
				
				 "gitignore",
				
				 "query",
				
				 "vimdoc",
				
				 "c",
				
			 },
			
			 incremental_selection = {
			
				 enable = true,
				
				 keymaps = {
				
					 init_selection = "<C-space>",
					
					 node_incremental = "<C-space>",
					
					 scope_incremental = false,
					
					 node_decremental = "<bs>",
					
				 },
				
			 },
			
		 })
		
	 end,
	
 }