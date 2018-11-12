function! line_shifters#DelEmptyLineAbove()
    if line('.') == 1
        return
    endi
    let l:line = getline(line('.') - 1)
    if l:line =~# '^\s*$'
        let l:colsave = col('.')
        .-1d
        silent normal! <c-y>
        call cursor(line('.'), l:colsave)
    endi
endfunction

function! line_shifters#AddEmptyLineAbove()
    let l:scrolloffsave = &scrolloff
    " Avoid jerky scrolling with ^E at top of window
    set scrolloff=0
    call append(line('.') - 1, '')
    if winline() != winheight(0)
        silent normal! <c-e>
    endif
    let &scrolloff = l:scrolloffsave
endfunction

function! line_shifters#DelEmptyLineBelow()
    if line('.') == line('$')
        return
    endif
    let l:line = getline(line('.') + 1)
    if l:line =~# '^\s*$'
        let l:colsave = col('.')
        .+1d
        ''
        call cursor(line('.'), l:colsave)
    endif
endfunction

function! line_shifters#AddEmptyLineBelow()
    call append(line('.'), '')
endfunction
