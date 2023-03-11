# VimChatGPT

The VimChatGPT plugin provides a built-in chat window inside Vim editor for users to chat with an AI chatbot powered by OpenAI's GPT language model.

## Features

* Open a split window for chatting with the AI chatbot
* Send questions to the chatbot and receive answers in the split window

## Installation

The recommended installation method is to use a plugin manager such as Vundle, Pathogen, or Vim-Plug. Add the following line to your vimrc file:

```
Plug 'bobobocode/vimchatgpt'
```

## Usage

To open the chat window, type the following command in Vim:

```
:Ai <your question>
```

This will send your question to ChatGPT, and open a split window to show ChatGPT response.

To get help information of this plugin, type the following command in
Vim:

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

## Credits

The AI chatbot is powered by OpenAI's GPT language model.
