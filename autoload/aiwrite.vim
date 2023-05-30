function! aiwrite#comment() range
    let file_extension = expand('%:e')
    let question = "add " . file_extension . " doc comment for: "
    let question = ask_with#selected(question)
    call wchat#on('current', question)
endfunction


function! aiwrite#func() range
    let question = "write func to achieve these:"
    let question = ask_with#selected(question)
    call wchat#on('current', question)
endfunction


function! aiwrite#code() range
    let question = "write code to achieve these:"
    let question = ask_with#selected(question)
    call wchat#on('current', question)
endfunction


function! aiwrite#module()
    let file_extension = expand('%:e')
    let question = "write " . file_extension . " code base on these comments:"
    let question = ask_with#all(question)
    call wchat#on('current', question)
endfunction
