function! openai#ask(input)
    let l:api_key = g:chatgpt_api_key
    let l:url = "https://api.openai.com/v1/chat/completions"
    let l:prompt = a:input

    let l:payload = '{"temperature": 0.7, "top_p":1,"frequency_penalty": 0.5,"presence_penalty": 0.0 , "max_tokens": 1024, "model": "gpt-3.5-turbo", "messages": [{"role": "user", "content": "' . l:prompt . '"}]}'
    let l:headers = {"Content-Type": "application/json", "Authorization": "Bearer " . l:api_key}

    let response = system('curl --connect-timeout 10 -m 60 -s -H "Content-Type: application/json" -H "Authorization: Bearer ' . l:api_key . '" -d ' . shellescape(l:payload) . ' ' . l:url)

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


