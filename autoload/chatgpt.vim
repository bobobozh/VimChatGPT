function! ChatGPT_API_Call(input)
    let l:api_key = g:chatgpt_api_key
    let l:url = "https://api.openai.com/v1/chat/completions"
    let l:prompt = a:input

    let l:payload = '{"temperature": 0.7, "top_p":1,"frequency_penalty": 0.5,"presence_penalty": 0.0 , "max_tokens": 1024, "model": "gpt-3.5-turbo", "messages": [{"role": "user", "content": "' . l:prompt . '"}]}'
    let l:headers = {"Content-Type": "application/json", "Authorization": "Bearer " . l:api_key}

    let response = system('curl --connect-timeout 10 -m 20 -s -H "Content-Type: application/json" -H "Authorization: Bearer ' . l:api_key . '" -d ' . shellescape(l:payload) . ' ' . l:url)

    if v:shell_error
        return "Error"
    else
        let json_response = json_decode(response)
        if has_key(json_response, 'choices') && len(json_response['choices']) > 0 && has_key(json_response['choices'][0], 'message')
            let text_completion = json_response['choices'][0]['message']['content']
            return text_completion
        elseif has_key(json_response, 'error')
            let error_msg = json_response['error']['message']
            return error_msg
        else
            return response
        endif
    endif
endfunction


function! chatgpt#ask(question)
    let src_winnr = win_getid()
    let split_name="ChatGPTOutput"
    let chat_exists = bufwinnr(split_name)
    if chat_exists == -1
        execute "vert rightbelow new " . split_name
        vertical resize 70
        call append(0, "ChatGPT")
        call append(1, "=======")
        let g:chatgpt_win = win_getid()
    endif

    call win_gotoid(g:chatgpt_win)

    call append(line('$'), "")
    call append(line('$'), "Me: " . a:question)
    call cursor(line('$'), 0)

    let response = ChatGPT_API_Call(a:question)
    let respl = split(response, '\n')

    call append(line('$'), "ChatGPT: ============================")
    "call append(line('$'), "ChatGPT: ". response)
    for rp in respl
        call append(line('$'), rp)
    endfor
    call append(line('$'), "=====================================")
    call cursor(line('$'), 0)
    call win_gotoid(src_winnr)
endfunction
