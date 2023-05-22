" mode1: Talk Mode
"   Open a split window(AIOUTPUT) to talk to AI(ChatGPT)
"
let g:AI_OUTPUT_SPLIT = 'AIOUTPUT'

" Send a question to ChatGPT
command! -nargs=+ Ai call ask#ask(<q-args>)

" Base on selected lines
command -range=% Aireview call ask#review()
command -range=% Aicomment call ask#comment()
command -range=% Aitest call ask#tests()

" Base on line range paramters, splite with `::`
" For example
"   :Ain correct codes with::1::20
command! -nargs=+ Aiwith call ask#withlines(<q-args>)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode2: Cowrite Mode
"   Write answer into the file
"   at the bottom of the file by default.
"
"
command -range=% Awcode call aiwrite#code()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode3: Pair Mode
