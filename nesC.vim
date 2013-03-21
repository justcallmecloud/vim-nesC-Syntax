" Vim Syntax File
" Language: nesC
" Maintainer: Alex Beltran
" Latest Revision: 2013-3-14

if exists("b:current_syntax")
  finish
endif

"Read C Syntax
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" General Syntax
syn keyword nesCStatement event post task call async atomic
syn keyword nesCStatement module implementation configuration components


" Variables
syn keyword nesCVariables message_t
syn keyword nesCVariables uint8_t uint16_t int8_t int16_t
syn keyword nesCVariables error_t

" Types
syn keyword nesCTypes uses provides interface


" Components
syn keyword nesCComponents MainC PrintfC SerialStartC TimerMilliC SerialActiveMessageC LedsC
syn keyword nesCComponents Msp430I2CC

" Constants
syn keyword nesCConstants SUCCESS FAIL TRUE FALSE

" I2C Constants
syn keyword nescConstants I2C_START I2C_STOP TI2CBasicAddr

" Functions

" TinyOS Functions
syn keyword nescFunctions led0On led0Off


hi def link nesCStatement   Statement

hi def link nesCVariables   Type
hi def link nesCTypes       Type
hi def link nesCComponents  Type

hi def link nesCConstants   Constant
hi def link nesCString      Constant

hi def link nesCComment     Comment

hi def link nesCFunctions   Identifier
hi def link cFunctions      Identifier

hi def link preProcessor    preProc

let b:current_syntax = "nc"
