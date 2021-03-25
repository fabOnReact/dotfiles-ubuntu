"Take care of indents for Java.
set autoindent
set si
set shiftwidth=2 
set tabstop=2
set softtabstop=2
"Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1
" https://vim.fandom.com/wiki/Add_Java_import_statements_automatically
noremap <F9> <Esc>
 \<C-W>}o//TEMP MARKER<Esc>
 \<C-W>P1G/public class<CR><Esc>yy<C-W>pG?import<CR><Esc>p<Esc>
 \<C-W>P1G/package<CR><Esc>yy<C-W>pG?import<CR><Esc>p<Esc>
 \$xa.<Esc>0jwwi<CR><Esc>kdd<Esc>
 \wDx<Esc>kJxx<Esc>$a;<Esc>
 \0cwimport<Esc>
 \:update<CR><Esc>
 \/TEMP MARKER<CR>dd<Esc>

noremap <F5> :call JavaInsertImport()<CR>
function! JavaInsertImport()
  exe "normal mz"
  let cur_class = expand("<cword>")
  try
    if search('^\s*import\s.*\.' . cur_class . '\s*;') > 0
      throw getline('.') . ": import already exist!"
    endif
    wincmd }
    wincmd P
    1
    if search('^\s*public.*\s\%(class\|interface\)\s\+' . cur_class) > 0
      1
      if search('^\s*package\s') > 0
        yank y
      else
        throw "Package definition not found!"
      endif
    else
      throw cur_class . ": class not found!"
    endif
    wincmd p
    normal! G
    " insert after last import or in first line
    if search('^\s*import\s', 'b') > 0
      put y
    else
      1
      put! y
    endif
    substitute/^\s*package/import/g
    substitute/\s\+/ /g
    exe "normal! 2ER." . cur_class . ";\<Esc>lD"
  catch /.*/
    echoerr v:exception
  finally
    " wipe preview window (from buffer list)
    silent! wincmd P
    if &previewwindow
      bwipeout
    endif
    exe "normal! `z"
  endtry
endfunction

noremap <F1> :update<CR>:make<CR><C-W>j<Esc>:cw 3<CR><C-W>p
