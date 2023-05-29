"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode1: Talk Mode
"   Open a split window(AI.CHAT) to talk to AI(ChatGPT)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AI_OUTPUT_SPLIT = 'AI.CHAT'

" Send a question to ChatGPT
command -nargs=+ Ai call ask#ask(<q-args>)
" Base on selected lines
command -range=% Aireview call ask#review()
command -range=% Aitest call ask#tests()
" Base on line range paramters, splite with `::`
" For example
"   :Ain correct codes with::1::20
command -nargs=+ Aiwith call ask#withlines(<q-args>)
 
command Aireadme call ask#readme()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode2: Cowrite Mode
"   Write answer into the file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command -range=% Awcomment call aiwrite#comment()
command -range=% Awfunc call aiwrite#func()
command -range=% Awcode call aiwrite#code()
" Write module code base selected docstring comment
command Awmodule call aiwrite#module()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: mode3: Pair Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
