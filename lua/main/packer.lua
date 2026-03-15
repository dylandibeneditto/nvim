-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim',
	  branch = 'master',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	'slugbyte/lackluster.nvim',
	as = 'lackluster',
	config = function()
		vim.cmd('colorscheme lackluster')
	end
  }

  use({ 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } })
end)
