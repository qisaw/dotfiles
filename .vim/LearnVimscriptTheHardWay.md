# Notes
This document is notes on learn [Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com/).

## Abbreviations
For common misspellings. Everytime you type the abbreviated word, vim will expand it to the selected word
e.g.
~~~
:iabbrev waht what
~~~

Vim will substitue non keyword characters after an abbreviation

## Mappings
To map things in a way that they can recursively be updated
~~~
" remapping in normal mode
:remap <dest_key> <source_key>
" remapping in insert mode
:iremap <dest_key> <source_key>
" remapping in visual mode
:vremap <dest_key> <source_key>
~~~

To non recursively map things. i.e only resolve mappings through one things
~~~
" remapping in normal mode
:nnoremap <dest_key> <source_key>
" remapping in insert mode
:inoremap <dest_key> <source_key>
" remapping in visual mode
:vnoremap <dest_key> <source_key>
~~~

## Learning the Map
The easiest way to learn a new mapping is to disable the old command
e.g.
~~~
:inoremap <esc> <nop>
~~~
