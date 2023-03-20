" Send a question to ChatGPT
command! -nargs=+ Ai call chatgpt#ask(<q-args>)

" Base on selected lines
command -range=% Aqr call chatgpt#review()
command -range=% Aqc call chatgpt#comment()
command -range=% Aqt call chatgpt#tests()

" Base on line range paramters
command! -nargs=+ Ail call chatgpt#lines(<q-args>)


" Help to put the answer into practice
command! -nargs=+ Sh call Ex_line(<q-args>)
function! Ex_line(line_num)
    let line_content = getline(a:line_num)
    let output = system(line_content)
    echo output
endfunction

command! -nargs=+ Wt call Write_to(<q-args>)
function! Write_to(path)
    echo 'TODO'
endfunction
