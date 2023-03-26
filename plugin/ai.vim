let g:AI_OUTPUT_SPLIT = 'AIOUTPUT'

" Send a question to ChatGPT
command! -nargs=+ Ai call ask#ask(<q-args>)

" Base on selected lines
command -range=% Air call ask#review()
command -range=% Aim call ask#comment()
command -range=% Ait call ask#tests()

command -range=% Aicode call ask#code()


" Base on line range paramters, splite with ::
" :Ain correct codes with::1::20
command! -nargs=+ Ain call ask#withlines(<q-args>)


" Help to put the answer into practice
command! -nargs=+ Sh call operate#exline(<q-args>)
