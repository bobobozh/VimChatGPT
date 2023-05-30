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

## Talk Mode

In Talk mode, users can engage in a conversation with AI (ChatGPT), 
through a split window interface.

Use these commands below to send questions:

- Send a question to ChatGPT
  - Command: `:Ai <question>`
- Review the selected lines
  - Command: `:% Aireview`
- Create unit test for the selected functions
  - Command: `:% Aitest`
- Use line number address to ask
  - Command: `:<line1>,<line2> Aiwith <question>`
- Ask solution with the opend README file
  - Command: `:Aireadme`

## Cowrite Mode

Cowrite Mode is a powerful tool for helping developers write better code by providing assistance with comments, functions, and code snippets. 

The answer of AI chatbot will be shown in your editing file. So you
can cowrite the file together.

- Write comment for the selected code
  - Command: `:% Awcomment`
- Write function for the selected comment
  - Command: `:% Awfunc`
- Write code for the selected content
  - Command: `:% Awcode`
- Write module code base selected docstring comment
  - Command: `:% Awmodule`

## Pair Mode (TODO)

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

You can set the `g:AI_OUTPUT_SPLIT` variable to specify a custom delimiter for splitting the output of the AI commands. By default, it is set to `'AI.chat'`.

```
let g:AI_OUTPUT_SPLIT = "<CUSTOM_AI_CHAT_SPLIT_NAME>"
```

## Credits

The AI chatbot is powered by OpenAI's GPT language model.
