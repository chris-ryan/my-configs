-- Neovim config file to enable LSP servers
-- The detailed configuration for each LSP can be found in ~/.config/nvim/lsp/
vim.lsp.enable('lua_ls')

vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(ev)
				local client = vim.lsp.get_client_by_id(ev.data.client_id)
				if client:supports_method('textDocument/completion') then
						vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
						vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true})
						vim.keymap.set('i', '<C-Space>', function()
								vim.lsp.completion.get()
						end)
				end
		end,
})

-- Diagnostics
vim.diagnostic.config({
		virtual_lines = true
		-- virtual_lines = {
		-- 		-- Only show diagnostics for the current cursor line
		-- 		current_line = true,
		-- },
})
