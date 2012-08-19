fireyang's vim config and plugins
## set vim start config [test on Mac]
set up user vim config:~/.vimrc；

Enter the following code；change the "FireVim_Path"

	let g:FireVim_Path='/firevim/path/to'
	exec "set" 'runtimepath=$VIMRUNTIME,~/,'.g:FireVim_Path.'vimfiles/'
	exec "source" g:FireVim_Path.'vimrc'

## vim plugs
* [NERDtree](https://github.com/scrooloose/nerdtree)
* [bufexplorer](http://www.vim.org/scripts/script.php?script_id=42)