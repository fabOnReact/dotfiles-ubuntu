Pluging to install
Save the buffers

ctrl-^ alternate file

Text objects
https://www.youtube.com/watch?v=SIePe-A4rs0
]) or ]} next curly braces
) next sentence
} next paragraph
vi' select internal to curly braces
va} or vi} to select method body
vi) or va) to select within ()
va[ or vi[ select the method body

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
if - inner function
af - all function
ic - inner class
ac - all class

Surround
https://github.com/tpope/vim-surround
is, as, ds, cs, and yss if you install repeat.vim.

Command (h surround)
ds"
cs])
cs"<q>
ysW(
vllllS'

. repeat operation

Open reference in vertical split
<C-w><C-v>]

<leader-b> to navigate buffer

https://github.com/junegunn/fzf.vim#mappings
fzf-complete-line
<c-x><c-l>

to edit snippets for the current file
CocCommand snippets.editSnippets

to list snippets
CocList snippets

<c-j> next placeholder
<c-k> prev placeholder

f9 to generate import f1 to update

https://vim.fandom.com/wiki/Search_and_replace_the_word_under_the_cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

easymotion
<leader><leader>f
<leader><leader>t
<leader><leader>w
<leader><leader>e

priettier ruby
https://github.com/neoclide/coc-prettier/issues/39
./node\*modules/.bin/prettier --write '\*\*/\_.rb'
CocCommand prettier.formatFile

search and replace system wide
https://jdhao.github.io/2020/03/14/nvim_search_replace_multiple_file/

c-w o to expand split window

To find a mapping
:verbose imap

Replace in all buffers
bufdo %s/Switch/Text/gce

Fix firefox dpi issue (using dpi at 2.0)
change firefox.desktop EXEC in /usr/share/applications/

```
sudo vim /usr/share/applications/firefox.desktop
env GDK_DPI_SCALE=0.65 firefox %u
```

also see [hdpi wiki](https://wiki.archlinux.org/title/HiDPI#Firefox)

Additionally installed the following gnome plugins:

- [hide top bar][1]
- no title bar forked
- gnome-tweaks Interface Text 8px
- Thunderbird font size 18px

[1]: https://extensions.gnome.org/extension/545/hide-top-bar/

Firefox avoid using same zoom on each website page
https://support.mozilla.org/en-US/questions/681298
Move mouse with alt tab
https://extensions.gnome.org/extension/4673/alt-tab-move-mouse/

TODO

Scripts:
1) Script to automatically start a server at location (alias) in the services session

Focused Windows on Ubuntu https://extensions.gnome.org/extension/3924/focus/

- configure markers to not be deleted when deleting the line
- fix java tags so that imports (f9 for FLog works). You need to update the tag variable and research best way to import tags from other projects (AOSP) so that you don't navigate to the wrong reference
- use g instead of git
- use autocomplete tab
- per project init.vim settings
