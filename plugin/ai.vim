"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode1: Talk Mode
"   Open a split window(AI.chat) to talk to AI(ChatGPT)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AI_OUTPUT_SPLIT = 'AI.chat'

" Send a question to ChatGPT
command -nargs=+ Ai call ask#ask(<q-args>)
" Review the selected lines
command -range=% Aireview call ask#review()
" Create unit test for the selected functions
command -range=% Aitest call ask#tests()
" Use line number address to ask
command! -range -nargs=1 Aiwith call ask#withlines(<line1>, <line2>, <f-args>)
" Ask solution with the opend README file
command Aireadme call ask#readme()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode2: Cowrite Mode
"   Write answer into the file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Write comment for the selected code
command -range=% Awcomment call aiwrite#comment()
" Write function for the selected comment
command -range=% Awfunc call aiwrite#func()
" Write code for the selected content
command -range=% Awcode call aiwrite#code()
" Write module code base selected docstring comment
command Awmodule call aiwrite#module()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: mode3: Pair Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
