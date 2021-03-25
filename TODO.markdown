Pluging to install
Save the buffers

TODO
configure markers to not be deleted when deleting the line
fix java tags so that imports (f9 for FLog works). You need to update the tag variable and research best way to import tags from other projects (AOSP) so that you don't navigate to the wrong reference
use g instead of git
use autocomplete tab

Text objects
https://www.youtube.com/watch?v=SIePe-A4rs0
]) or ]} next curly braces
) next sentence
} next paragraph
vi' select internal to curly braces
va} or vi} to select method body
vi) or va) to select within ()
va[ or vi[ select the method body

Surround
https://github.com/tpope/vim-surround
The . command will work with ds, cs, and yss if you install repeat.vim.

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
:CocCommand snippets.editSnippets
<c-j> next placeholder
<c-k> prev placeholder

f9 to generate import f1 to update

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

https://vim.fandom.com/wiki/Search_and_replace_the_word_under_the_cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
