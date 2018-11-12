# vim-line-shifters

Provides mappings to move lines by creating and deleting empty lines above/below the current line.

Mappable commands:
`<Plug>(line-shifters-del-empty-above)` - Removes an empty line above the cursor, if one exists.
`<Plug>(line-shifters-add-empty-above)` - Adds an empty line above the cursor.
`<Plug>(line-shifters-del-empty-below)` - Removes an empty line below the cursor, if one exists.
`<Plug>(line-shifters-add-empty-below)` - Adds an empty line below the cursor.

## Suggested Mappings

```vim
nmap <Up> <Plug>(line-shifters-del-empty-above)
nmap <Down> <Plug>(line-shifters-add-empty-above)
nmap <C-Up> <Plug>(line-shifters-del-empty-below)
nmap <C-Down> <Plug>(line-shifters-add-empty-below)

imap <Up> <Plug>(line-shifters-del-empty-above)
imap <Down> <Plug>(line-shifters-add-empty-above)
imap <C-Up> <Plug>(line-shifters-del-empty-below)
imap <C-Down> <Plug>(line-shifters-add-empty-below)
```

These also mesh quite nicely with using the left and right arrow keys for indentation:
```vim
nnoremap <Left> <<
nnoremap <Right> >>
inoremap <silent> <Left> <C-D>
inoremap <silent> <Right> <C-T>
```

## Examples

Given the following code (with the suggested mappings and with the cursor at `|`):

```
if (condition) {
    result = operation();
    if (!result) return false;|

    operation2();
}
```

`<Down>` will result in:

```
if (condition) {
    result = operation();

    if (!result) return false;|

    operation2();
}
```

and `<C-Up>` will result in:

```
if (condition) {
    result = operation();
    if (!result) return false;|
    operation2();
}
```

## Dependencies

- NeoVim or Vim 7.3+

## Installation

First, add the necessary line to your `vimrc`:

- [Vundle][vundle] - `Bundle 'pianohacker/vim-line-shifters'`
- [NeoBundle][neobundle] - `NeoBundle 'pianohacker/vim-line-shifters'`
- [dein][dein] - `call dein#add('pianohacker/vim-line-shifters')`
- [vim-plug][vim-plug] - `Plug 'pianohacker/vim-line-shifters'`

Finally, restart your editor, then install the plugin:

- [Vundle][vundle] - `:PluginInstall`
- [NeoBundle][neobundle] - `:NeoBundleInstall`
- [Dein][dein] - `:call dein#install()`
- [vim-plug][vim-plug] - `:PlugInstall`

## Acknowlegements

The underlying code is largely copied from [Quickly adding and deleting empty lines on the Vim
wiki](http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines).

[vundle]: https://github.com/VundleVim/Vundle.vim
[neobundle]: https://github.com/Shougo/neobundle.vim
[dein]: https://github.com/Shougo/dein.vim
[vim-plug]: https://github.com/junegunn/vim-plug
[vim-textobj-user]: https://github.com/kana/vim-textobj-user
