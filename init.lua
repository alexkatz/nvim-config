local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'unblevable/quick-scope'
	use 'machakann/vim-highlightedyank'
	use 'phaazon/hop.nvim'
	use 'tpope/vim-surround'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
 if packer_bootstrap then
    require('packer').sync()
  end
end)

-- hop
require'hop'.setup()
vim.keymap.set('n', 's', [[:HopChar2<CR>]])

-- quick-scope
vim.g['qs_highlight_on_keys'] = {'f', 'F', 't', 'T'}
vim.cmd [[
highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
]]

-- VSCode navigation
vim.keymap.set({'n', 'x'}, '<C-j>', [[:call VSCodeNotify('workbench.action.navigateDown')<CR>]], {silent = true})
vim.keymap.set({'n', 'x'}, '<C-k>', [[:call VSCodeNotify('workbench.action.navigateUp')<CR>]], {silent = true})
vim.keymap.set({'n', 'x'}, '<C-h>', [[:call VSCodeNotify('workbench.action.navigateLeft')<CR>]], {silent = true})
vim.keymap.set({'n', 'x'}, '<C-l>', [[:call VSCodeNotify('workbench.action.navigateRight')<CR>]], {silent = true})

-- Go to references
vim.keymap.set('n', 'gr', [[:call VSCodeNotify('editor.action.goToReferences')<CR>]]);

