function! Chat(question, show_mode='full')
    if a:show_mode == 'full'
        let now = strftime("%H:%M:%S")
        call append(line('$'), "")

        let question_len = len(a:question)
        if question_len > 50
            let show_question = strpart(a:question, 0, 50) . "~~~"
        else
            let show_question = a:question
        endif

        call append(line('$'), now . " Me: " . show_question)
        call append(line('$'), "ChatGPT ...")
        call cursor(line('$'), 0)
        redraw

        let response = openai#ask(a:question)
        let respl = split(response, '\n')

        call append(line('$'), "-----------------------------------------------")
        for rp in respl
            call append(line('$'), rp)
        endfor
        call append(line('$'), "-----------------------------------------------")
        call cursor(line('$'), 0)
        redraw
    else
        let response = openai#ask(a:question)
        let respl = split(response, '\n')
        for rp in respl
            call append(line('$'), rp)
        endfor
    endif
endfunction


function! chat#on(split_name, question)
    if a:split_name == 'current'
        let ret = Chat(a:question, 'answer')
    else
        let src_win_id = win_getid()

        let chat_win_id = bufwinnr(a:split_name)
        if chat_win_id == -1
            execute "vert rightbelow new " . a:split_name
            vertical resize 70
            call append(0, "ChatGPT")
            call append(1, "=======")
            let g:chat_win_id = win_getid()
        endif

        call win_gotoid(g:chat_win_id)
        let ret = Chat(a:question)
        call win_gotoid(src_win_id)
    endif
endfunction
