function! aiwrite#module() range
    let file_extension = expand('%:e')
    let question = "write " . file_extension . " code base on these comments:"
    call Ask_with_All(question, 'current')
endfunction

function! Ask_with_All(question, split_name=g:AI_OUTPUT_SPLIT)
    let current_content = join(getline(2, '$'), "\n")
    let question = a:question . " : " . current_content
    let question = escape(question, '\"')
    call wchat#on(a:split_name, question)
endfunction
