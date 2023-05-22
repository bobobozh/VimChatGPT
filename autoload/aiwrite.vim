function! aiwrite#code() range
    let file_extension = expand('%:e')
    let question = "write " . file_extension . " code base on these comments:"
    call Select_And_Ask(question, 'current')
endfunction
