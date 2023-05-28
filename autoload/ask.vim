

function! Join_selected_lines()
    let [start_row, start_col] = getpos("'<")[1:2]
    let [end_row, end_col] = getpos("'>")[1:2]
    let range = [start_row, end_row]

    let lines = getline(range[0], range[1])
    let text = join(lines, '\n')
    return text
endfunction


function! Select_and_Ask(question, split_name=g:AI_OUTPUT_SPLIT)
    let codes = Join_selected_lines()

    let question = a:question . " : " . codes
    let question = escape(question, '\"')

    call wchat#on(a:split_name, question)
endfunction


function! ask#review() range
    let question = "review this code and improve it"
    call Select_and_Ask(question)
endfunction


function! ask#comment() range
    let question = "add doc comment for these function"
    call Select_and_Ask(question)
endfunction


function! ask#tests() range
    let question = "generate unit tests with unittest lib for these function"
    call Select_and_Ask(question)
endfunction


function! Join_question_lines(question)
    let parts = split(a:question, '::')
    let title = parts[0]
    let start_line = parts[1]
    let end_line = parts[2]


    let content = ""
    for line_num in range(start_line, end_line)
      let line_content = getline(line_num)
      let content = content . '\n' . line_content
    endfor

    let ask_question = title . '\n' . content
    return ask_question
endfunction


function! ask#withlines(question) range
    let question = Join_question_lines(a:question)
    let question = escape(question, '\"')
    call wchat#on(g:AI_OUTPUT_SPLIT, question)
endfunction


function! ask#ask(question)
    call wchat#on(g:AI_OUTPUT_SPLIT, a:question)
endfunction

