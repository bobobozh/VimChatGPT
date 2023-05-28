# VimChatGPT

The VimChatGPT plugin provides a built-in chat window inside Vim editor for users to chat with an AI chatbot powered by OpenAI's GPT language model.

## Features

* Open a split window for chatting with the AI chatbot
* Send questions to the chatbot and receive answers in the split window
* Ask questions base on selected lines or content in line number range
* Ask to write code base on selected comments

## Installation

The recommended installation method is to use a plugin manager such as Vundle, Pathogen, or Vim-Plug. Add the following line to your vimrc file:

```
Plug 'bobobocode/vimchatgpt'
```

## Usage

### Asking a Question

To open the chat window, type the following command in Vim:

```
:Ai <your question>
```

This will send your question to ChatGPT, and open a split window to show ChatGPT response.

For example:

```
:Ai What is the capital of France?
```

### Reviewing Selected Lines

To review selected lines of code, use the following command:

```
:'<,'>Air
```

This will send the selected lines as input to ChatGPT for review.

### Commenting on Selected Lines

To add comments on selected lines of code, use the following command:

```vim
:'<,'>Aim
```

This will send the selected lines as input to ChatGPT for commenting.

### Testing Selected Lines

To generate test cases for selected lines of code, use the following command:

```
:'<,'>Ait
```

This will send the selected lines as input to ChatGPT for generating test cases.

### Ask with Line Numbers

To ask question about content within line number range, use this command:

```
:Ain <question>::<start_line>::<end_line>
```

For example:

```
:Ain fix bugs about::1::30
```

### Ask to write code base on selected comments

```
:'<,'>Aicode
```

### Help

To get help information of this plugin, type the following command in Vim:

```
:help Ai
```

## Configuration

The following configuration options are available:

* `g:chatgpt_api_key`: Sets your ChatGPT API Key.

To change the configuration options, add the following lines to your vimrc file:

```
let g:chatgpt_api_key = "<YOUR_API_KEY>"
```

You can set the `g:AI_OUTPUT_SPLIT` variable to specify a custom delimiter for splitting the output of the AI commands. By default, it is set to `'AIOUTPUT'`.

```
let g:AI_OUTPUT_SPLIT = "<CUSTOM_AI_CHAT_SPLIT_NAME>"
```

## Credits

The AI chatbot is powered by OpenAI's GPT language model.
