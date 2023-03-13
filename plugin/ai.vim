" Define the command to send a question to ChatGPT
command! -nargs=+ Ai call chatgpt#ask(<q-args>)

command -range=% Ar call chatgpt#review()
