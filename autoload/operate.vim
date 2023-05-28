function! operate#exline(line_num)
    let line_content = getline(a:line_num)
    let output = system(line_content)
    echo output
endfunction

function! Write_to(path)
    echo 'TODO'
endfunction
