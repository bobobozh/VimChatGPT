function! ask#ask(question)
    call wchat#on(g:AI_OUTPUT_SPLIT, a:question)
endfunction


function! ask#review() range
    let question = "review this code and improve it"
    let question = ask_with#selected(question)
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction


function! ask#tests() range
    let question = "generate unit tests with unittest lib for these function"
    let question = ask_with#selected(question)
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction


function! ask#withlines(question) range
    let question = ask_with#lines(a:question)
    let question = escape(question, '\"')
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction


function! ask#readme()
    let question = "write code base on this readme:"
    let question = ask_with#all(question)
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction
