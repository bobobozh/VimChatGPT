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


function! ask#withlines(line1, line2, question)
    let question = ask_with#lines(a:question, a:line1, a:line2)
    let question = escape(question, '\"')
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction


function! ask#readme()
    let question = "write code base on this readme:"
    let question = ask_with#all(question)
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction
